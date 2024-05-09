import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Generated.Value;
import javax.persistence.GeneartionType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Entity
@Table(name = "TbUnidadeFederativa")
public class UnidadeFederativa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer cdUnidadeFederativa;

    @NotBlank
    private String nmUnidadeFederativa;

    @NotBlank
    private String sgUnidadeFederativa;

    @ManyToOne
    @JoinColumn(name = "cdPais")
    private Pais pais;

    @NotNull
    @Enumerated(EnumType.STRING)
    private StatusAtivoEnum flAtivo;

    @NotNull
    private LocalDateTime dtInclusao;


    public Integer getCdUnidadeFederativa() {
        return cdUnidadeFederativa;
    }

    public void setCdUnidadeFederativa(Integer cdUnidadeFederativa) {
        this.cdUnidadeFederativa = cdUnidadeFederativa;
    }

    public String getNmUnidadeFederativa() {
        return nmUnidadeFederativa;
    }

    public void setNmUnidadeFederativa(String nmUnidadeFederativa) {
        this.nmUnidadeFederativa = nmUnidadeFederativa;
    }

    public String getSgUnidadeFederativa() {
        return sgUnidadeFederativa;
    }

    public void setSgUnidadeFederativa(String sgUnidadeFederativa) {
        this.sgUnidadeFederativa = sgUnidadeFederativa;
    }

    public Pais getPais() {
        return pais;
    }

    public void setPais(Pais pais) {
        this.pais = pais;
    }

    public StatusAtivoEnum getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(StatusAtivoEnum flAtivo) {
        this.flAtivo = flAtivo;
    }

    public LocalDateTime getDtInclusao() {
        return dtInclusao;
    }

    public void setDtInclusao(LocalDateTime dtInclusao) {
        this.dtInclusao = dtInclusao;
    }
}