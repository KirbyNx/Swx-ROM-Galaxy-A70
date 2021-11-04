.class public Lcom/samsung/android/knox/analytics/model/Event;
.super Lorg/json/JSONObject;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/model/Event$Fields;
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private id:I

.field private vid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "vid"    # I
    .param p3, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string v0, "vid"

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v0, "data"

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/knox/analytics/model/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 3

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "data":Ljava/lang/String;
    :try_start_1
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/model/Event;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 50
    goto :goto_d

    .line 48
    :catch_9
    move-exception v1

    .line 49
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_d
    return-object v0
.end method

.method public getId()I
    .registers 3

    .line 25
    const/4 v0, -0x1

    .line 27
    .local v0, "id":I
    :try_start_1
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 30
    goto :goto_d

    .line 28
    :catch_9
    move-exception v1

    .line 29
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 31
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_d
    return v0
.end method

.method public getVid()I
    .registers 3

    .line 35
    const/4 v0, -0x1

    .line 37
    .local v0, "vid":I
    :try_start_1
    const-string v1, "vid"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/model/Event;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 40
    goto :goto_d

    .line 38
    :catch_9
    move-exception v1

    .line 39
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_d
    return v0
.end method
