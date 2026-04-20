# executable-yoneda-experiment

**AI-assisted Formalization Experiment of Yoneda Reconstruction in Cubical Agda**

このリポジトリは、ChatGPT・Grok・Claudeの3機種と人間が協力して作成した**実験的artifact**です。

### 目的
Yoneda補題の「観察から対象を再構築する」という概念を、Cubical Agdaで実行可能（executable）にする試み。  
理論の話で終わらせず、実際に動くコードとして実装することを目指しました。

### 含まれる内容
- `OGS.Core`：Executable Yoneda reconstruction（reconstruct / embed）
- `OGS.Optimizer`：簡単な数式最適化器（+0, *1, *0 の除去）
- Rewrite Trace機能（簡易版）
- デモファイル

### 重要なお知らせ
これは**完全検証済みの形式化ではありません**。  
最適化器はheuristic（経験則）デモです。正しさ証明は一部のケースに留まっています。詳細はnote記事を参照してください。

### Related Article
[note.com記事](https://note.com/alert_sheep1149/n/neeb3f09def2c)

### Requirements
- Agda 2.6.4 以上
- `cubical` library

### Build & Test
```bash
agda src/OGS-Optimizer.agda
agda examples/Demo-Optimizer.agda
