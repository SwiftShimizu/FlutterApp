package com.example.button

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var tx: TextView = findViewById(R.id.tv)
        var btn1: Button = findViewById(R.id.btnDog)
        var btn2: Button = findViewById(R.id.btnCat)
        var btn3: Button = findViewById(R.id.btnClear)

        btn1.setOnClickListener {
            tx.text = "犬"
        }

        btn2.setOnClickListener {
            tx.text = "猫"
        }

        btn3.setOnClickListener {
            tx.text = ""
        }

    }
}