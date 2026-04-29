# Jaden Prather – Assignment 5 Components (CSE 445)

## Overview
This branch contains my individual components developed for Assignment 5, which are now being integrated into the Assignment 6 group project.

## Components Implemented

### 1. DLL Class Library (StudyHelperLibrary)
- File: `HashUtility.cs`
- Function: Computes SHA256 hash of input text
- Input: string
- Output: hashed string
- Purpose: Demonstrates local component (DLL) requirement

### 2. Web Service (StudyService)
- File: `StudyService.asmx`
- Method: `GetLetterGrade(double score)`
- Input: numeric score (0–100)
- Output: letter grade (A–E)
- Purpose: Demonstrates remote service layer

### 3. Session State Component
- Stores a study item (string) during user session
- Demonstrates state management

### 4. Global.asax Event Handler
- Tracks application visit count
- Uses Application and Session state

### 5. Default Page (Assignment 5)
- Includes TryIt sections for:
  - Hash function
  - Session state
  - Web service

## How to Test

### Hash Function
1. Enter text (e.g., "hello")
2. Click "Hash Text"
3. Output: SHA256 hash

### Session State
1. Enter value (e.g., "Math")
2. Click "Save in Session"
3. Click "Load from Session"
4. Output: stored value

### Web Service
1. Enter score (e.g., 95)
2. Click "Get Letter Grade"
3. Output: A

## Notes
- All components were tested and successfully integrated.
- This branch is intended for merging into the main Assignment 6 project.