import { useState } from 'react';
import './App.css';

function App() {
  const [inputText, setInputText] = useState('');
  const [sortedText, setSortedText] = useState('');

  const handleSort = async () => {
    try {
      const response = await fetch('http://localhost:8080/sort', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ text: inputText }),
      });
      const data = await response.json();
      setSortedText(data.sorted);
    } catch (error) {
      console.error('错误:', error);
    }
  };

  return (
    <div className="App">
      <div className="container">
        <input
          type="text"
          value={inputText}
          onChange={(e) => setInputText(e.target.value)}
          placeholder="请输入要排序的文字~~~"
        />
        <button onClick={handleSort}>排序</button>
        {sortedText && <div className="result">排序结果: {sortedText}</div>}
      </div>
    </div>
  );
}

export default App;