package service;

import model.Lesson;

import java.util.List;

public interface ILessonService {
    List<Lesson> list();
    void delete (String id);
}
