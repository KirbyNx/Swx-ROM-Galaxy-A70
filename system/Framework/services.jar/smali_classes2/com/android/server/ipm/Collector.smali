.class public Lcom/android/server/ipm/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-Collector"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadHistory:Lcom/android/server/ipm/LoopStack;

.field private mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSimState:Z

.field mWM:Landroid/view/WindowManager;

.field mWifi:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/Collector;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/ipm/Collector;->DEBUG:Z

    .line 40
    iput-object p1, p0, Lcom/android/server/ipm/Collector;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/android/server/ipm/LoopStack;

    invoke-direct {v0}, Lcom/android/server/ipm/LoopStack;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/Collector;->mLoadHistory:Lcom/android/server/ipm/LoopStack;

    .line 43
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/ipm/Collector;->mWM:Landroid/view/WindowManager;

    .line 44
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/ipm/Collector;->mWifi:Landroid/net/wifi/WifiManager;

    .line 45
    return-void
.end method

.method private getBtStatus(Lcom/android/server/ipm/Record;)V
    .registers 5
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;

    .line 161
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 163
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_14

    .line 164
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 165
    const/4 v1, 0x1

    iput v1, p1, Lcom/android/server/ipm/Record;->btStatus:I

    goto :goto_1e

    .line 167
    :cond_10
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/ipm/Record;->btStatus:I

    goto :goto_1e

    .line 169
    :cond_14
    const-string v1, "PkgPredictorService-Collector"

    const-string v2, "btAdapter is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/server/ipm/Record;->btStatus:I

    .line 172
    :goto_1e
    return-void
.end method

.method private getScreenOrientation(Lcom/android/server/ipm/Record;)V
    .registers 6
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;

    .line 125
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mWM:Landroid/view/WindowManager;

    const/4 v1, -0x1

    const-string v2, "PkgPredictorService-Collector"

    if-nez v0, :cond_10

    .line 126
    const-string/jumbo v0, "mWM is null!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput v1, p1, Lcom/android/server/ipm/Record;->screenOrientation:I

    .line 128
    return-void

    .line 131
    :cond_10
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 132
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_1e

    .line 133
    const-string v3, "display is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput v1, p1, Lcom/android/server/ipm/Record;->screenOrientation:I

    .line 135
    return-void

    .line 138
    :cond_1e
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 139
    .local v1, "degrees":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    goto :goto_2d

    .line 142
    :cond_29
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/ipm/Record;->screenOrientation:I

    goto :goto_2f

    .line 140
    :cond_2d
    :goto_2d
    iput v2, p1, Lcom/android/server/ipm/Record;->screenOrientation:I

    .line 143
    :goto_2f
    return-void
.end method

.method private getWifiStatus(Lcom/android/server/ipm/Record;)V
    .registers 4
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;

    .line 147
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mWifi:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 148
    const-string v0, "PkgPredictorService-Collector"

    const-string/jumbo v1, "mWifi is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/server/ipm/Record;->wifiStatus:I

    .line 150
    return-void

    .line 153
    :cond_10
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 154
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/ipm/Record;->wifiStatus:I

    goto :goto_1d

    .line 156
    :cond_1a
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/ipm/Record;->wifiStatus:I

    .line 157
    :goto_1d
    return-void
.end method

.method private save2db(Lcom/android/server/ipm/Record;)V
    .registers 12
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;

    .line 176
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v0

    .line 177
    .local v0, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 178
    const-string v1, "PkgPredictorService-Collector"

    const-string/jumbo v2, "save record failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_13
    sget-object v1, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_16
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->beginTransaction()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_141

    .line 185
    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v2, "prediction":Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/android/server/ipm/Record;->prediction:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 187
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    nop

    .end local v4    # "str":Ljava/lang/String;
    goto :goto_24

    .line 190
    :cond_3a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "hour_of_day"

    iget v5, p1, Lcom/android/server/ipm/Record;->hourOfDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v4, "day_of_week"

    iget v5, p1, Lcom/android/server/ipm/Record;->dayOfWeek:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string/jumbo v4, "previous_one"

    iget-object v5, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v4, "previous_two"

    iget-object v5, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v4, "previous_three"

    iget-object v5, p1, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v4, "running_pkg"

    iget-object v5, p1, Lcom/android/server/ipm/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v4, "user_id"

    iget v5, p1, Lcom/android/server/ipm/Record;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string/jumbo v4, "screen_orientation"

    iget v5, p1, Lcom/android/server/ipm/Record;->screenOrientation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string/jumbo v4, "wifi_status"

    iget v5, p1, Lcom/android/server/ipm/Record;->wifiStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v4, "bt_status"

    iget v5, p1, Lcom/android/server/ipm/Record;->btStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string/jumbo v4, "predict_time"

    iget v5, p1, Lcom/android/server/ipm/Record;->predictTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v4, "apk_version"

    iget-object v5, p1, Lcom/android/server/ipm/Record;->apkVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v4, "consume_time"

    iget v5, p1, Lcom/android/server/ipm/Record;->consumeTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v4, "activity_name"

    iget-object v5, p1, Lcom/android/server/ipm/Record;->activityName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v4, p1, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    if-eqz v4, :cond_df

    .line 208
    const-string v4, "error"

    iget-object v5, p1, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9

    .line 210
    :cond_df
    const-string/jumbo v4, "prediction"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_e9
    const-string/jumbo v4, "launch_time"

    iget-wide v8, p1, Lcom/android/server/ipm/Record;->launchTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string/jumbo v4, "success"

    iget-boolean v5, p1, Lcom/android/server/ipm/Record;->success:Z

    if-eqz v5, :cond_fe

    move v5, v7

    goto :goto_ff

    :cond_fe
    move v5, v6

    :goto_ff
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string/jumbo v4, "is_preloaded"

    iget-boolean v5, p1, Lcom/android/server/ipm/Record;->preloaded:Z

    if-eqz v5, :cond_10e

    move v6, v7

    :cond_10e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    iget-object v4, v0, Lcom/android/server/ipm/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/ipm/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 215
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->setTransactionSuccessful()V

    .line 216
    sget-boolean v4, Lcom/android/server/ipm/Collector;->DEBUG:Z

    if-eqz v4, :cond_136

    const-string v4, "PkgPredictorService-Collector"

    const-string/jumbo v5, "save one record successfully!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_129} :catch_12c
    .catchall {:try_start_19 .. :try_end_129} :catchall_12a

    goto :goto_136

    .line 220
    .end local v2    # "prediction":Ljava/lang/StringBuilder;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_12a
    move-exception v2

    goto :goto_13c

    .line 217
    :catch_12c
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    :try_start_12d
    const-string v3, "PkgPredictorService-Collector"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_12d .. :try_end_136} :catchall_12a

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_136
    :goto_136
    :try_start_136
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 221
    nop

    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 220
    :goto_13c
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 221
    nop

    .end local v0    # "db":Lcom/android/server/ipm/DBManager;
    .end local p0    # "this":Lcom/android/server/ipm/Collector;
    .end local p1    # "rcd":Lcom/android/server/ipm/Record;
    throw v2

    .line 222
    .restart local v0    # "db":Lcom/android/server/ipm/DBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/Collector;
    .restart local p1    # "rcd":Lcom/android/server/ipm/Record;
    :catchall_141
    move-exception v2

    monitor-exit v1
    :try_end_143
    .catchall {:try_start_136 .. :try_end_143} :catchall_141

    throw v2
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 107
    const-string v0, "cached Records<unsaved to db>:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    monitor-enter v0

    .line 109
    :try_start_8
    iget-object v1, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/Record;

    .line 110
    .local v2, "r":Lcom/android/server/ipm/Record;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/ipm/Record;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .end local v2    # "r":Lcom/android/server/ipm/Record;
    goto :goto_e

    .line 112
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_79

    .line 113
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 116
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mLoadHistory:Lcom/android/server/ipm/LoopStack;

    invoke-virtual {v0}, Lcom/android/server/ipm/LoopStack;->pop3()[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "apps":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the latest three apps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v1, "------------------------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 121
    return-void

    .line 112
    .end local v0    # "apps":[Ljava/lang/String;
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v1
.end method

.method protected generateRecord(ILjava/lang/String;III)Lcom/android/server/ipm/Record;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "bt"    # I
    .param p4, "wifi"    # I
    .param p5, "screen"    # I

    .line 48
    new-instance v0, Lcom/android/server/ipm/Record;

    invoke-direct {v0}, Lcom/android/server/ipm/Record;-><init>()V

    .line 49
    .local v0, "rcd":Lcom/android/server/ipm/Record;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 50
    .local v1, "cal":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/ipm/Record;->hourOfDay:I

    .line 51
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/ipm/Record;->dayOfWeek:I

    .line 52
    iget-object v2, p0, Lcom/android/server/ipm/Collector;->mLoadHistory:Lcom/android/server/ipm/LoopStack;

    invoke-virtual {v2, p2}, Lcom/android/server/ipm/LoopStack;->push(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/android/server/ipm/Collector;->mLoadHistory:Lcom/android/server/ipm/LoopStack;

    invoke-virtual {v2}, Lcom/android/server/ipm/LoopStack;->pop3()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    .line 54
    iput p3, v0, Lcom/android/server/ipm/Record;->btStatus:I

    .line 55
    iput p4, v0, Lcom/android/server/ipm/Record;->wifiStatus:I

    .line 56
    iput p5, v0, Lcom/android/server/ipm/Record;->screenOrientation:I

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "record changed bt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  wifi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PkgPredictorService-Collector"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v0
.end method

.method protected isRecordsSizeMax()Z
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 99
    .local v0, "len":I
    const/16 v1, 0x1e

    if-le v0, v1, :cond_e

    .line 100
    const/4 v1, 0x1

    return v1

    .line 103
    .end local v0    # "len":I
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method protected saveRecord(Lcom/android/server/ipm/Record;)V
    .registers 6
    .param p1, "rcd"    # Lcom/android/server/ipm/Record;

    .line 80
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-boolean v1, Lcom/android/server/ipm/Collector;->DEBUG:Z

    if-eqz v1, :cond_27

    const-string v1, "PkgPredictorService-Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save record...\n ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ipm/Record;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_27
    iget-object v1, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method protected saveRecords()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    monitor-enter v0

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 90
    iget-object v2, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/Record;

    invoke-direct {p0, v2}, Lcom/android/server/ipm/Collector;->save2db(Lcom/android/server/ipm/Record;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 92
    .end local v1    # "i":I
    :cond_1a
    iget-object v1, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v1
.end method

.method protected updateActivityLaunchConsumeTime(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 63
    iget-object v0, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    monitor-enter v0

    .line 64
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_4e

    .line 65
    iget-object v2, p0, Lcom/android/server/ipm/Collector;->mRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/Record;

    .line 66
    .local v2, "rcd":Lcom/android/server/ipm/Record;
    iget-object v3, v2, Lcom/android/server/ipm/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 67
    iget v3, v2, Lcom/android/server/ipm/Record;->consumeTime:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4e

    .line 68
    iput-object p2, v2, Lcom/android/server/ipm/Record;->activityName:Ljava/lang/String;

    .line 69
    long-to-int v3, p3

    iput v3, v2, Lcom/android/server/ipm/Record;->consumeTime:I

    .line 70
    sget-boolean v3, Lcom/android/server/ipm/Collector;->DEBUG:Z

    if-eqz v3, :cond_4e

    const-string v3, "PkgPredictorService-Collector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update activity launch time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 64
    .end local v2    # "rcd":Lcom/android/server/ipm/Record;
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 75
    .end local v1    # "i":I
    :cond_4e
    :goto_4e
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method
