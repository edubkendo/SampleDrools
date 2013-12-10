package rubyobj;

import org.edubkendo.JIApplicant;

/**
 * Created by eric on 12/10/13.
 */
public class TestApplicant implements JIApplicant {
    private String name;
    private int age;
    private boolean valid;

    public TestApplicant(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }

}
