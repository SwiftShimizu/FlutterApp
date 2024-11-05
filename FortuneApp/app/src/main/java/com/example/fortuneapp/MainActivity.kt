package com.example.fortuneapp

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import kotlin.random.Random as Random

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var tv: TextView = findViewById(R.id.uranaiText)
        var button: Button = findViewById(R.id.uranaiBtn)

        button.setOnClickListener {
//            tv.text = "大吉"
            var uranai = arrayOf("大吉","中吉","小吉","凶")
            var num = Random.nextInt(uranai.count()) // int はsize
//            tv.text = num.toString()
            tv.text = uranai.get(num)
        }
    }
}