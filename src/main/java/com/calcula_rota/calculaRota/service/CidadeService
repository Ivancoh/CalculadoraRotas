import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CidadeService {

    @Autowired
    private CidadeRepository cidadeRepository;

    public List<Cidade> getAllCidades() {
        return cidadeRepository.findAll();
    }

    public Cidade getCidadeById(Integer id) {
        return cidadeRepository.findById(id).orElse(null);
    }

    public Cidade updateCidade(Integer id, Cidade cidade) {
        if(cidadeRepository.existsById(id)) {
            cidade.setCdCidade(id);
            return cidadeRepository.save(cidade);
        } else {
            return null;
        }
    }

    public void deleteCidade(Integer id) {
        cidadeRepository;deleteById(id);
    }
}