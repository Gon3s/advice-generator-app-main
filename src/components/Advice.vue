<script setup>
import axios from "axios"
import {ref} from "vue"

let slip = ref({})
newAdvice()

function newAdvice() {
    axios.get("https://api.adviceslip.com/advice")
    .then((res) => {
        slip.value = res.data.slip
    })
}    
</script>

<template>
<div class="card">
    <div class="advice--number">ADVICE #{{ slip.id}}</div>
    <div class="advice--text">"{{ slip.advice}}"</div>
    <div class="advice--button" @click="newAdvice"></div>
</div>
</template>

<style lang="scss">
@import "../assets/variables.scss";
.card {
    background-color: $darkGrayishBlue;
    border-radius: 5px;
    padding: 32px 16px 104px 16px;
    text-align: center;
    position: relative;

    @media (min-width: 768px) {            
        width: 524px;
    }

    .advice-- {
        &number {
            color: $neonGreen;
            font-size: 0.75rem;
            margin-bottom: 16px;
            font-weight: 400;
            letter-spacing: .25rem;
        }

        &text {
            font-weight: 800;
        }

        &button {
            position: absolute;
            background-repeat: no-repeat;
            background-position: center;
            bottom: -28px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 100%;
            background-color: $neonGreen;
            background-image: url("/icon-dice.svg");
            height: 32px;
            width: 32px;
            padding: 32px;
        }
    }

    &::before {
        content: "";
        position: absolute;
        background-repeat: no-repeat;
        background-position: center;
    }

    &::before {
        background-image: url("/pattern-divider-mobile.svg");
        @media (min-width: 768px) {            
            background-image: url("/pattern-divider-desktop.svg");
        }

        height: 16px;
        width: 100vw;
        left: 50%;
        transform: translateX(-50%);
        bottom: 64px;
    }
}
</style>