import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/cidades")
public class CidadeController {

    @Autowired
    private CidadeService cidadeService;

    @GetMapping
    public ResponseEntity<List<Cidade>> getAllCidades() {
        List<Cidade> cidades = cidadeService.getAllCidades();
        return new ResponseEntity<>(cidades, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Cidade> getCidadeById(@PathVariable Integer id) {
        Cidade cidade = cidadeService.getCidadeById(id);
        if(cidade != null) {
            return new ResponseEntity<>(cidade, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(cidade, HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/{id}")
    public ResponseEntity<Cidade> createCidade(@RequestBody Cidade cidade) {
        Cidade createdCidade = cidadeService.createCidade(cidade);
        return new ResponseEntity<>(createdCidade, HttpStatus.CREATED);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Cidade> updateCidade(@PathVariable Integer id, @RequestBody Cidade cidade) {
        Cidade updatedCidade = cidadeService.updateCidade(id, cidade);
        if(updatedCidade != null) {
            return new ResponseEntity<>(updateCidade, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCidade(@PathVariable Integer id) {
        cidadeService.deleteCidade(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}