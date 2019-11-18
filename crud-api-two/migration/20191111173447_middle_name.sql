-- +goose Up
-- +goose StatementBegin
SELECT 'up SQL query';
-- +goose StatementEnd
CREATE TYPE enum_mood AS ENUM (
	'happy',
	'sad',
	'neutral'
);
ALTER TABLE people ADD COLUMN mood enum_mood;
-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
-- +goose StatementEnd

ALTER TABLE people DROP COLUMN mood;
DROP TYPE enum_mood;
