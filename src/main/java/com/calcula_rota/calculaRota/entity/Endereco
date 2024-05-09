import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "TbEndereco")
public class Endereco {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer cdEndereco;

    @ManyToOne
    @JoinColumn(name = "cdCidade")
    private Cidade cidade;

    @NotBlank
    private String nmBairro;

    @NotBlank
    private String dsComplemento;

    @NotBlank
    private String nmLogradouro;

    @NotBlank
    private String nuLogradouro;

    @NotBlank
    private String tpEndereco;

    @NotBlank
    private String obsEndereco;

    @NotNull
    @Enumerated(EnumType.STRING)
    private StatusAtivoEnum flAtivo;

    // Getters e Setters

    public Integer getCdEndereco() {
        return cdEndereco;
    }

    public void setCdEndereco(Integer cdEndereco) {
        this.cdEndereco = cdEndereco;
    }

    public Cidade getCidade() {
        return cidade;
    }

    public void setCidade(Cidade cidade) {
        this.cidade = cidade;
    }

    public String getNmBairro() {
        return nmBairro;
    }

    public void setNmBairro(String nmBairro) {
        this.nmBairro = nmBairro;
    }

    public String getDsComplemento() {
        return dsComplemento;
    }

    public void setDsComplemento(String dsComplemento) {
        this.dsComplemento = dsComplemento;
    }

    public String getNmLogradouro() {
        return nmLogradouro;
    }

    public void setNmLogradouro(String nmLogradouro) {
        this.nmLogradouro = nmLogradouro;
    }

    public String getNuLogradouro() {
        return nuLogradouro;
    }

    public void setNuLogradouro(String nuLogradouro) {
        this.nuLogradouro = nuLogradouro;
    }

    public String getTpEndereco() {
        return tpEndereco;
    }

    public void setTpEndereco(String tpEndereco) {
        this.tpEndereco = tpEndereco;
    }

    public String getObsEndereco() {
        return obsEndereco;
    }

    public void setObsEndereco(String obsEndereco) {
        this.obsEndereco = obsEndereco;
    }

    public StatusAtivoEnum getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(StatusAtivoEnum flAtivo) {
        this.flAtivo = flAtivo;
    }
}