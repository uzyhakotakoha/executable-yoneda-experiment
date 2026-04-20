# executable-yoneda-experiment

**AI-assisted Formalization Experiment of Yoneda Reconstruction in Cubical Agda**

このリポジトリは、ChatGPT・Grok・Claudeの3機種と人間が協力して作成した**実験的artifact**です。

### 目的
Yoneda補題の「観察から対象を再構築する」という概念を実行可能なコードとして実装する試み。  
理論だけでなく、実際に動くデモを作成することを目指しました。

### 含まれる主なファイル
- `src/OGS-Core.agda`：Yoneda reconstructionの実装
- `src/OGS-Optimizer.agda`：簡単な数式最適化器（+0, *1, *0除去）
- `examples/Demo-Optimizer.agda`：動作デモ

### 注意
これは**完全な形式検証ではありません**。最適化器はheuristic（経験則ベース）のデモです。詳細な過程と限界はnote記事を参照してください。

### Related note Article
[ChatGPT・Grok・Claudeと共同で作った Executable Yoneda の実験記録](https://note.com/alert_sheep1149/n/neeb3f09def2c)

### Requirements
- Agda 2.6.4 以上
- cubical library

### License
MIT License
