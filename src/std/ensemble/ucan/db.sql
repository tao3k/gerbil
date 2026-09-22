-- © Gerbil contributors
-- Dedicated UCAN storage with indexed expiration cleanup.
CREATE TABLE ucan_roots (
  did TEXT NOT NULL PRIMARY KEY
) WITHOUT ROWID;

CREATE TABLE ucan_tokens (
  -- 0: saved token, 1: input anchor, 2: output anchor (ucan-db-kind-*).
  kind INTEGER NOT NULL CHECK (kind IN (0, 1, 2)),
  token BLOB NOT NULL,
  expire INTEGER NOT NULL,
  PRIMARY KEY (kind, token)
) WITHOUT ROWID;

CREATE INDEX ucan_tokens_expire ON ucan_tokens (expire);
