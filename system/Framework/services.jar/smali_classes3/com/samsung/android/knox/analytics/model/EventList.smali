.class public Lcom/samsung/android/knox/analytics/model/EventList;
.super Lorg/json/JSONArray;
.source "EventList.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public put(Lcom/samsung/android/knox/analytics/model/Event;)V
    .registers 3
    .param p1, "e"    # Lcom/samsung/android/knox/analytics/model/Event;

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/model/Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/model/EventList;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    return-void
.end method

.method public toByteArray()[B
    .registers 3

    .line 20
    invoke-super {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
