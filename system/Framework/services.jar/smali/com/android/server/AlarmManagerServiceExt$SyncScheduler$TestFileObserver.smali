.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;
.super Landroid/os/FileObserver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestFileObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p2, "path"    # Ljava/lang/String;

    .line 4142
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 4143
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 4145
    return-void
.end method

.method private cmd(CLjava/lang/String;I)V
    .registers 7
    .param p1, "key"    # C
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4219
    :try_start_0
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    .line 4221
    .local v0, "localService":Lcom/android/server/AlarmManagerInternal;
    const/16 v1, 0x2b

    if-eq p1, v1, :cond_15

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_11

    goto :goto_19

    .line 4226
    :cond_11
    invoke-interface {v0, p2, p3}, Lcom/android/server/AlarmManagerInternal;->disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z

    goto :goto_19

    .line 4223
    :cond_15
    invoke-interface {v0, p2, p3}, Lcom/android/server/AlarmManagerInternal;->enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    .line 4224
    nop

    .line 4231
    .end local v0    # "localService":Lcom/android/server/AlarmManagerInternal;
    :goto_19
    goto :goto_22

    .line 4229
    :catch_1a
    move-exception v0

    .line 4230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlarmManagerEXT"

    const-string v2, "Test module Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4232
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method private parseUserId(Ljava/lang/String;)I
    .registers 4
    .param p1, "userId"    # Ljava/lang/String;

    .line 4210
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 4211
    :catch_5
    move-exception v0

    .line 4213
    .local v0, "e":Ljava/lang/Exception;
    const/high16 v1, -0x80000000

    return v1
.end method

.method private readFile(Ljava/lang/String;)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;

    .line 4165
    const-string v0, "Test module : fr"

    const-string v1, "Test module : br"

    const-string v2, "AlarmManagerEXT"

    if-nez p1, :cond_e

    .line 4166
    const-string v0, "PATH NULL on readFile"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4167
    return-void

    .line 4170
    :cond_e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4171
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 4172
    const-string v0, "No exist test interface file : /data/system/app_sync_log_enable on readFile"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    return-void

    .line 4176
    :cond_1f
    const/4 v4, 0x0

    .line 4177
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 4179
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_21
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 4180
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v6

    .line 4183
    :goto_2d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_98

    .line 4184
    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4185
    .local v6, "datas":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_53

    .line 4186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fail to read line "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    goto :goto_2d

    .line 4190
    :cond_53
    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-direct {p0, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->parseUserId(Ljava/lang/String;)I

    move-result v8

    .line 4192
    .local v8, "userId":I
    const/4 v9, 0x0

    aget-object v10, v6, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_75

    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_68

    goto :goto_75

    .line 4197
    :cond_68
    aget-object v10, v6, v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-direct {p0, v9, v10, v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->cmd(CLjava/lang/String;I)V

    .line 4198
    .end local v6    # "datas":[Ljava/lang/String;
    .end local v8    # "userId":I
    goto :goto_2d

    .line 4193
    .restart local v6    # "datas":[Ljava/lang/String;
    .restart local v8    # "userId":I
    :cond_75
    :goto_75
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to read datas "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_97} :catch_ab
    .catchall {:try_start_21 .. :try_end_97} :catchall_a9

    .line 4194
    goto :goto_2d

    .line 4203
    .end local v6    # "datas":[Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "userId":I
    :cond_98
    :try_start_98
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a0

    :catch_9c
    move-exception v6

    .local v6, "e2":Ljava/lang/Exception;
    invoke-static {v2, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4204
    .end local v6    # "e2":Ljava/lang/Exception;
    :goto_a0
    :try_start_a0
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_c1

    :catch_a4
    move-exception v1

    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c1

    .line 4203
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_a9
    move-exception v6

    goto :goto_c2

    .line 4199
    :catch_ab
    move-exception v6

    .line 4201
    .local v6, "e":Ljava/lang/Exception;
    :try_start_ac
    const-string v7, "Test module"

    invoke-static {v2, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_ac .. :try_end_b1} :catchall_a9

    .line 4203
    nop

    .end local v6    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_bc

    :try_start_b4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_bc

    :catch_b8
    move-exception v6

    .local v6, "e2":Ljava/lang/Exception;
    invoke-static {v2, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4204
    .end local v6    # "e2":Ljava/lang/Exception;
    :cond_bc
    :goto_bc
    if-eqz v4, :cond_c1

    :try_start_be
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_a4

    .line 4206
    :cond_c1
    :goto_c1
    return-void

    .line 4203
    :goto_c2
    if-eqz v5, :cond_cc

    :try_start_c4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_cc

    :catch_c8
    move-exception v7

    .local v7, "e2":Ljava/lang/Exception;
    invoke-static {v2, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4204
    .end local v7    # "e2":Ljava/lang/Exception;
    :cond_cc
    :goto_cc
    if-eqz v4, :cond_d6

    :try_start_ce
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_d2

    goto :goto_d6

    :catch_d2
    move-exception v1

    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4205
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_d6
    :goto_d6
    throw v6
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 4150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManagerEXT"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    const/16 v0, 0x8

    if-eq p1, v0, :cond_40

    const/16 v0, 0x200

    if-eq p1, v0, :cond_30

    const/16 v0, 0x400

    if-eq p1, v0, :cond_30

    const/16 v0, 0x800

    if-eq p1, v0, :cond_30

    goto :goto_45

    .line 4156
    :cond_30
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/os/FileObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 4157
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTestFileObserver:Landroid/os/FileObserver;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3702(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/os/FileObserver;)Landroid/os/FileObserver;

    .line 4158
    goto :goto_45

    .line 4160
    :cond_40
    const-string v0, "/data/system/app_sync_log_enable"

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TestFileObserver;->readFile(Ljava/lang/String;)V

    .line 4162
    :goto_45
    return-void
.end method
