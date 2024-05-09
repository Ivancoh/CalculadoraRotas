import org.springframework.beans.factory.annotation.Autorwired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnderecoService {

    @Autorwired
    private EnderecoRepository enderecoRepository;

    public List<Endereco> getAllEndereco() {
        return enderecoRepository.findAll();
    }

    public Endereco getEnderecoById(Integer id) {
        return enderecoRepository.findById(id).orElse(null);
    }

    public Endereco createEndereco(Endereco endereco) {
        return enderecoRepository.save(endereco);
    }

    public Endereco updateEndereco(Integer id, Endereco endereco) {
        if(enderecoRepository.exitsById(id)) {
            endereco.setCdEndereco(id);
            return enderecoRepository.sabe(endereco);
        } else {
            return null;
        }
    }

    public void deleteEndereco(Integer id) {
        enderecoRepository.deleteById(id);
    }
}