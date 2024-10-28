package hib.models;

import jakarta.persistence.*;
import lombok.Data;
import org.hibernate.annotations.Formula;

import java.io.Serializable;
import java.util.Objects;

@Data
@Entity
@Table(name = "games", schema = "ad")
public class Game implements Serializable {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private Long id;
    private String title;
    private String platform;
    private Integer year;
    private String description;
    @Column(name="image_url")
    private String imageUrl;

    @Transient //cuando voy a leerlo, no lo leo ni lo escribo en la base de datos
    private Integer age;
    @Formula("2025 - year")//directamente aplica la fórmula - por ejemplo para encadenar el nombre completo
    private Integer n;

    //por defecto es eager
    @ManyToOne
    @JoinColumn(name="user_id")
    private User user;

    public Integer getAge(){
        return 2024-year;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Game that = (Game) o;
        return id == that.id && Objects.equals(title, that.title) && Objects.equals(platform, that.platform) && Objects.equals(year, that.year) && Objects.equals(description, that.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, title, platform, year, description);
    }

    @Override
    public String toString() {
        return "Game{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", platform='" + platform + '\'' +
                ", year=" + year +
                ", description='" + description + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", user=" + user.getEmail() +
                '}';
    }
}
