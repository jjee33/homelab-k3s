{{/*
Common labels applied to all resources
*/}}
{{- define "freshrss.labels" -}}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{/*
Selector labels for FreshRSS
*/}}
{{- define "freshrss.selectorLabels" -}}
app.kubernetes.io/name: freshrss
app.kubernetes.io/component: web
{{- end }}

{{/*
Selector labels for PostgreSQL
*/}}
{{- define "postgres.selectorLabels" -}}
app.kubernetes.io/name: freshrss
app.kubernetes.io/component: database
{{- end }}

{{/*
Selector labels for Full-Text RSS
*/}}
{{- define "fulltext.selectorLabels" -}}
app.kubernetes.io/name: freshrss
app.kubernetes.io/component: fulltext-rss
{{- end }}

{{/*
Selector labels for RSSHub
*/}}
{{- define "rsshub.selectorLabels" -}}
app.kubernetes.io/name: freshrss
app.kubernetes.io/component: rsshub
{{- end }}
