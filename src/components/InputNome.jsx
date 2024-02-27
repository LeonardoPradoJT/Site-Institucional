import React, { useState } from "react";
import { useNavigate } from 'react-router-dom';
import Input from '@mui/material/Input';
import InputLabel from '@mui/material/InputLabel';
import FormControl from '@mui/material/FormControl';

const InputNome = (props) => {

    const navigate = useNavigate();

    return (
        <>
            <FormControl sx={{ m: 1, width: '25ch' }} variant="standard">
                <InputLabel htmlFor="nome">Nome</InputLabel>
                <Input
                    id="nome"
                    name="nome"
                    type="text"
                    value={props.formData.nome}
                    onChange={props.handleInputChange}
                    label="Nome"
                />
            </FormControl>
        </>
    )
}

export default InputNome