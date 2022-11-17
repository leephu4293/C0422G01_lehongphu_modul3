package service.impl;

import model.Lesson;
import repository.ILessonRepository;
import repository.impl.LessonRepository;
import service.ILessonService;

import java.util.List;

public class LessonService implements ILessonService {
    private static ILessonRepository lessonRepository = new LessonRepository();
    @Override
    public List<Lesson> list() {
        return lessonRepository.list();
    }

    @Override
    public void delete(String id) {
        lessonRepository.delete(id);
    }
}
