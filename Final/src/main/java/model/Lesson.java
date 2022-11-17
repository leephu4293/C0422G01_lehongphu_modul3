package model;

public class Lesson {
    private String idLesson;
   private String header;
   private String typeLesson;
   private String hardLevel;
   private String modul;
   private String link;


    public Lesson() {
    }

    public Lesson(String header, String typeLesson, String hardLevel, String modul, String link) {
        this.header = header;
        this.typeLesson = typeLesson;
        this.hardLevel = hardLevel;
        this.modul = modul;
        this.link = link;
    }

    public Lesson(String idLesson, String header, String typeLesson, String hardLevel, String modul, String link) {
        this.idLesson = idLesson;
        this.header = header;
        this.typeLesson = typeLesson;
        this.hardLevel = hardLevel;
        this.modul = modul;
        this.link = link;
    }

    public String getIdLesson() {
        return idLesson;
    }

    public void setIdLesson(String idLesson) {
        this.idLesson = idLesson;
    }

    public String getHeader() {
        return header;
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public String getTypeLesson() {
        return typeLesson;
    }

    public void setTypeLesson(String typeLesson) {
        this.typeLesson = typeLesson;
    }

    public String getHardLevel() {
        return hardLevel;
    }

    public void setHardLevel(String hardLevel) {
        this.hardLevel = hardLevel;
    }

    public String getModul() {
        return modul;
    }

    public void setModul(String modul) {
        this.modul = modul;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
