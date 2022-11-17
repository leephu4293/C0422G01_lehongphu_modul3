package repository;

import model.Lesson;

import java.util.List;

public interface ILessonRepository {
    List<Lesson> list();
    void delete (String id);
}
