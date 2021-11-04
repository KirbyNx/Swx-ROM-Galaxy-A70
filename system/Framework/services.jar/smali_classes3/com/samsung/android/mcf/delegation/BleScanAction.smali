.class public Lcom/samsung/android/mcf/delegation/BleScanAction;
.super Ljava/lang/Object;
.source "BleScanAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    }
.end annotation


# static fields
.field public static final KEY_ACTION_NAME:Ljava/lang/String; = "action"

.field public static final KEY_ACTION_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final KEY_EXTRA:Ljava/lang/String; = "appData"

.field public static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TAG:Ljava/lang/String; = "BleScanAction"

.field public static final TYPE_ACTIVITY:I = 0x2

.field public static final TYPE_BROADCAST:I = 0x1

.field public static final TYPE_SERVICE:I


# instance fields
.field public final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction;
    .registers 9

    .line 106
    const-string v0, "type"

    const-string v1, "className"

    const-string v2, "packageName"

    const-string v3, "appData"

    const-string v4, "flags"

    const-string v5, "action"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 108
    :try_start_11
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v6, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 114
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    nop

    .line 117
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_46

    .line 118
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v6, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_46
    nop

    .line 121
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 122
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_54
    new-instance p0, Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-direct {p0, v6}, Lcom/samsung/android/mcf/delegation/BleScanAction;-><init>(Landroid/os/Bundle;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_59} :catch_5a

    return-object p0

    .line 126
    :catch_5a
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanAction"

    const-string v1, "BleScanAction - "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public send(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 71
    const-string v0, "BleScanAction"

    const-string v1, "send"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    .line 73
    const-string v4, "className"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 76
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_2f
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "flags"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 80
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    :cond_42
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "appData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 84
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_55
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_65

    .line 90
    :try_start_5f
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_79

    :catch_63
    move-exception p1

    goto :goto_75

    :cond_65
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6c

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_79

    :cond_6c
    const/4 v3, 0x1

    if-ne v2, v3, :cond_79

    const-string v2, "com.samsung.android.mcfserver.permission.USE_PROVIDER_API"

    .line 94
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_74} :catch_63

    goto :goto_79

    :goto_75
    nop

    .line 97
    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_79
    :goto_79
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 10

    .line 136
    const-string v0, "appData"

    const-string v1, "flags"

    const-string v2, "action"

    const-string v3, "type"

    const-string v4, "className"

    const-string v5, "packageName"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 138
    const/4 v7, 0x0

    :try_start_12
    iget-object v8, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    iget-object v5, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    iget-object v3, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 144
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_38
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_44

    .line 149
    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    :cond_44
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanAction;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 154
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_4f
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_53} :catch_54

    return-object v0

    .line 158
    :catch_54
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleScanAction"

    const-string v2, "toJsonObject : "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method
