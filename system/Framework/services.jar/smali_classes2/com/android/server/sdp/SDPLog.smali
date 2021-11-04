.class public Lcom/android/server/sdp/SDPLog;
.super Ljava/lang/Object;
.source "SDPLog.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final REFLECT:Z = true

.field private static final TAG:Ljava/lang/String; = "SDPLog"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/android/server/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "dMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    .line 25
    if-eqz p1, :cond_12

    .line 26
    if-eqz p0, :cond_d

    move-object v1, p0

    goto :goto_f

    :cond_d
    const-string v1, "SDPLog"

    :goto_f
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_12
    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 53
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 57
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 58
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 61
    invoke-static {p1, p2}, Lcom/android/server/sdp/SDPLogUtil;->makeErrorMessages(Ljava/lang/String;Ljava/lang/Exception;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "eMsgs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 63
    .local v3, "eMsg":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    .line 62
    .end local v3    # "eMsg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 65
    :cond_10
    if-eqz p1, :cond_1e

    .line 66
    if-eqz p0, :cond_16

    move-object v1, p0

    goto :goto_18

    :cond_16
    const-string v1, "SDPLog"

    :goto_18
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :cond_1e
    return-void
.end method

.method public static i()V
    .registers 2

    .line 31
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 43
    invoke-static {p1, p2}, Lcom/android/server/sdp/SDPLogUtil;->makeInfoMessages(Ljava/lang/String;Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "iMsgs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 45
    .local v3, "iMsg":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    .line 44
    .end local v3    # "iMsg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 47
    :cond_10
    if-eqz p1, :cond_1b

    .line 48
    if-eqz p0, :cond_16

    move-object v1, p0

    goto :goto_18

    :cond_16
    const-string v1, "SDPLog"

    :goto_18
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1b
    return-void
.end method

.method public static varargs p([Ljava/lang/Object;)V
    .registers 1
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 81
    return-void
.end method
