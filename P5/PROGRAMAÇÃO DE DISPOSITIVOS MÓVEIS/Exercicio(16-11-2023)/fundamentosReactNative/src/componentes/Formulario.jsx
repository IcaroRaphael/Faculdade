import React, {useState} from 'react';
import { View, TextInput, Text, Button } from 'react-native';
export default props => {

    const [email, setEmail] = useState("");
    const [senha, setSenha] = useState("");

    const handleButtonPress = () => {
        console.warn("Email:", email, "Senha:", senha);
    }
    

    return (
        <View>
            <TextInput
                placeholder='Digite seu e-mail'
                value={email}
                onChangeText={email => setEmail(email)}
                keyboardType='email-address'
                autoCapitalize='none'
                style={{borderWidth: 1, borderColor: 'gray', padding: 10, marginBottom: 10}}
            />
            <TextInput
                placeholder='Digite sua senha'
                value={senha}
                onChangeText={senha => setSenha(senha)}
                secureTextEntry
                style={{borderWidth: 1, borderColor: 'gray', padding: 10, marginBottom: 10}}
            />
            <Button title='Login' onPress={handleButtonPress}/>
        </View>
    )
}