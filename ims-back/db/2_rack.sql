--+up
CREATE TABLE
    ims.rack (
        id uuid PRIMARY KEY,
        name varchar not null,
        created_at timestamptz NOT NULL DEFAULT current_timestamp,
        updated_at timestamptz
    );
    --+down
DROP TABLE ims.rack;