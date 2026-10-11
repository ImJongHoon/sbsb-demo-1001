# SBSB 시연 앱

방문할 때마다 Postgres에 기록하고 총 방문 수를 보여 주는 Node.js 앱입니다.

- 일부러 `Dockerfile`이 없습니다. SBSB가 설정 PR에 Dockerfile과 빌드 워크플로를 넣습니다.
- `package.json`의 `pg` 의존성을 보고 SBSB가 Postgres가 필요한 앱임을 알아냅니다. DB는 배포 서버에 따로 띄우고, 비밀번호는 SBSB가 만들어 `DATABASE_URL`로 넣어 줍니다.
- 테이블은 앱이 시작할 때 직접 만듭니다 (`CREATE TABLE IF NOT EXISTS`).
- 8000번 포트에서 실행됩니다 (`PORT`로 바꿀 수 있음).
- SBSB 배포 점검 요청(`wget`)은 방문 수에 넣지 않습니다.

| 브랜치 | 화면 |
|--------|------|
| `main` | 파랑 v1 |
| `v2` | 초록 v2 (`server.js`의 버전·색만 다름) |
