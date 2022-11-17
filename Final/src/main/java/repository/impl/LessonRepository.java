package repository.impl;

import model.Lesson;
import repository.BaseConnecting;
import repository.ILessonRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LessonRepository implements ILessonRepository {
    private static final String DISPLAY="select * from quan_ly_bai_hoc";
    private static final String DELETE="delete from quan_ly_bai_hoc where id_bai= ?;";
    @Override
    public List<Lesson> list() {
        Connection connection = BaseConnecting.getConnectDB();
        List<Lesson> lessonList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DISPLAY);
          ResultSet resultSet =  preparedStatement.executeQuery();
          while (resultSet.next()){
              String id = resultSet.getString("id_bai");
            String header =resultSet.getString("tieu_de");
            String typeLesson = resultSet.getString("loai_bai");
            String hardLevel =resultSet.getString("do_kho");
            String modul = resultSet.getString("ma_modul");
            String link = resultSet.getString("link_bai_hoc");
            Lesson lesson = new Lesson(id,header,typeLesson,hardLevel,modul,link);
            lessonList.add(lesson);
          }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lessonList;
    }

    @Override
    public void delete(String id ) {
      Connection connection = BaseConnecting.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setString(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
