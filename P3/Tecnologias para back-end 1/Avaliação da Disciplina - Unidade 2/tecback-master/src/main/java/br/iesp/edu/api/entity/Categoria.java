package br.iesp.edu.api.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;

@Entity
@Getter
@Setter
public class Categoria {

    @Id
    @GeneratedValue
    private Integer id;

    @NotEmpty(message="Campo categoria é obrigatório.")
    private String categoria;
}
