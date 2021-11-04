.class Lcom/android/server/appop/AppOpsService$NoteOpTrace;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoteOpTrace"
.end annotation


# static fields
.field static final OP:Ljava/lang/String; = "op"

.field static final PACKAGENAME:Ljava/lang/String; = "packageName"

.field static final STACKTRACE:Ljava/lang/String; = "stackTrace"

.field static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final mOp:I

.field private final mPackageName:Ljava/lang/String;

.field private final mStackTrace:Ljava/lang/String;

.field private final mVersion:J


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6
    .param p1, "stackTrace"    # Ljava/lang/String;
    .param p2, "op"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "version"    # J

    .line 6455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6456
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    .line 6457
    iput p2, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    .line 6458
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    .line 6459
    iput-wide p4, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    .line 6460
    return-void
.end method

.method static fromJson(Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$NoteOpTrace;
    .registers 9
    .param p0, "jsonTrace"    # Ljava/lang/String;

    .line 6444
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6445
    .local v0, "obj":Lorg/json/JSONObject;
    new-instance v7, Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    const-string/jumbo v1, "stackTrace"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "op"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "packageName"

    .line 6446
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;-><init>(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 6445
    return-object v7

    .line 6447
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_2f
    move-exception v0

    .line 6449
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "AppOps"

    const-string v2, "Error constructing NoteOpTrace object JSON trace format incorrect"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6451
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public asJson()Ljava/lang/String;
    .registers 6

    .line 6484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"stackTrace\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    .line 6485
    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "op"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\":\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6484
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 6464
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 6465
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    .line 6466
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    .line 6467
    .local v2, "that":Lcom/android/server/appop/AppOpsService$NoteOpTrace;
    iget v3, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    if-ne v3, v4, :cond_38

    iget-wide v3, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    iget-wide v5, v2, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_38

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    .line 6469
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    .line 6470
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 6467
    :goto_39
    return v0

    .line 6465
    .end local v2    # "that":Lcom/android/server/appop/AppOpsService$NoteOpTrace;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 6475
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mStackTrace:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mOp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->mVersion:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
