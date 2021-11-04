.class Lcom/android/server/ipm/AufHitCalculation;
.super Ljava/lang/Object;
.source "AufPeriodic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/AufHitCalculation$ObserverHandler;
    }
.end annotation


# static fields
.field static AUF_DEBUG:Z = false

.field private static DEBUG:Z = false

.field private static final HITCOUNT_FILE:Ljava/lang/String; = "/data/system/ipm_hitcount.txt"

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-AufHitCalculation"

.field private static mHitRatio:Lcom/android/server/ipm/AufSummary;

.field private static mPredictAppLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/AppRanking;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPredictor:Lcom/android/server/ipm/AufPredictor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/AufHitCalculation;->DEBUG:Z

    .line 89
    const-string/jumbo v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    sput-boolean v0, Lcom/android/server/ipm/AufHitCalculation;->AUF_DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    const-string/jumbo v0, "mHitRatio fail"

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ObserverHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/ipm/AufHitCalculation;->mHandlerThread:Landroid/os/HandlerThread;

    .line 94
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v2, Lcom/android/server/ipm/AufHitCalculation$ObserverHandler;

    iget-object v3, p0, Lcom/android/server/ipm/AufHitCalculation;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/ipm/AufHitCalculation$ObserverHandler;-><init>(Lcom/android/server/ipm/AufHitCalculation;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/ipm/AufHitCalculation;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/ipm_hitcount.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "file":Ljava/io/File;
    new-instance v3, Lcom/android/server/ipm/AufSummary;

    invoke-direct {v3}, Lcom/android/server/ipm/AufSummary;-><init>()V

    sput-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    .line 100
    new-instance v3, Lcom/android/server/ipm/AufPredictor;

    invoke-direct {v3, p1}, Lcom/android/server/ipm/AufPredictor;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/ipm/AufHitCalculation;->mPredictor:Lcom/android/server/ipm/AufPredictor;

    .line 101
    sget-boolean v3, Lcom/android/server/ipm/AufHitCalculation;->AUF_DEBUG:Z

    sput-boolean v3, Lcom/android/server/ipm/AufHitCalculation;->DEBUG:Z

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 106
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_43
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 107
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 108
    move-object v5, v1

    .line 109
    .local v5, "readStr":Ljava/lang/String;
    move-object v6, v1

    .line 110
    .local v6, "tmp":Ljava/lang/String;
    :cond_56
    :goto_56
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    if-eqz v7, :cond_158

    .line 111
    const-string v7, "currentTime"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_76

    .line 112
    const-string v7, "currentTime "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 113
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/ipm/AufSummary;->currentTime:J

    goto :goto_56

    .line 114
    :cond_76
    const-string/jumbo v7, "resetTime"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v8, :cond_90

    .line 115
    const-string/jumbo v7, "resetTime "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 116
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/ipm/AufSummary;->resetTime:J

    goto :goto_56

    .line 117
    :cond_90
    const-string v7, "TotalCount"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v8, :cond_a8

    .line 118
    const-string v7, "TotalCount "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 119
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/AufSummary;->totalcount:I

    goto :goto_56

    .line 120
    :cond_a8
    const-string v7, "HitCount5"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v8, :cond_c0

    .line 121
    const-string v7, "HitCount5 "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 122
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/AufSummary;->hit5:I

    goto :goto_56

    .line 123
    :cond_c0
    const-string v7, "HitCount10"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v8, :cond_d9

    .line 124
    const-string v7, "HitCount10 "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 125
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/AufSummary;->hit10:I

    goto/16 :goto_56

    .line 126
    :cond_d9
    const-string v7, "HitCount15"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v8, :cond_f2

    .line 127
    const-string v7, "HitCount15 "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 128
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/AufSummary;->hit15:I

    goto/16 :goto_56

    .line 129
    :cond_f2
    const-string v7, "HitCount20"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v8, :cond_10b

    .line 130
    const-string v7, "HitCount20 "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 131
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/AufSummary;->hit20:I

    goto/16 :goto_56

    .line 132
    :cond_10b
    const-string v7, "HitCount25"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v8, :cond_124

    .line 133
    const-string v7, "HitCount25 "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 134
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/AufSummary;->hit25:I

    goto/16 :goto_56

    .line 135
    :cond_124
    const-string v7, "HitCount30"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v8, :cond_13d

    .line 136
    const-string v7, "HitCount30 "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 137
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/AufSummary;->hit30:I

    goto/16 :goto_56

    .line 138
    :cond_13d
    const-string/jumbo v7, "hitEtc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v8, :cond_56

    .line 139
    const-string/jumbo v7, "hitEtc "

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 140
    sget-object v7, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    goto/16 :goto_56

    .line 143
    :cond_158
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_15b} :catch_16b
    .catchall {:try_start_43 .. :try_end_15b} :catchall_169

    .line 147
    .end local v5    # "readStr":Ljava/lang/String;
    .end local v6    # "tmp":Ljava/lang/String;
    nop

    .line 149
    :try_start_15c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_15f} :catch_160

    .line 152
    :goto_15f
    goto :goto_175

    .line 150
    :catch_160
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_15f

    .line 147
    :catchall_169
    move-exception v1

    goto :goto_176

    .line 144
    :catch_16b
    move-exception v1

    .line 145
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_16c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16f
    .catchall {:try_start_16c .. :try_end_16f} :catchall_169

    .line 147
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_175

    .line 149
    :try_start_171
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_174} :catch_160

    goto :goto_15f

    .line 155
    :cond_175
    :goto_175
    return-void

    .line 147
    :goto_176
    if-eqz v3, :cond_184

    .line 149
    :try_start_178
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17b} :catch_17c

    .line 152
    goto :goto_184

    .line 150
    :catch_17c
    move-exception v5

    .line 151
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v5    # "e":Ljava/io/IOException;
    :cond_184
    :goto_184
    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/ipm/AufHitCalculation;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/AufHitCalculation;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/AufHitCalculation;->calculateHitCount(Ljava/lang/String;I)V

    return-void
.end method

.method private calculateHitCount(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 158
    if-nez p1, :cond_f

    .line 159
    sget-boolean v0, Lcom/android/server/ipm/AufHitCalculation;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "PkgPredictorService-AufHitCalculation"

    const-string/jumbo v1, "unknown app go to foreground... pkgName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_e
    return-void

    .line 162
    :cond_f
    const/4 v0, 0x0

    .local v0, "iPkg":I
    :goto_10
    sget-object v1, Lcom/android/server/ipm/AufPredictor;->exceptionPkgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_46

    .line 164
    sget-object v1, Lcom/android/server/ipm/AufPredictor;->exceptionPkgs:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 165
    sget-boolean v1, Lcom/android/server/ipm/AufHitCalculation;->DEBUG:Z

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkgName is an exception app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PkgPredictorService-AufHitCalculation"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_42
    return-void

    .line 162
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 170
    .end local v0    # "iPkg":I
    :cond_46
    sget-object v0, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    monitor-enter v0

    .line 171
    :try_start_49
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5f

    .line 172
    sget-boolean v1, Lcom/android/server/ipm/AufHitCalculation;->DEBUG:Z

    if-eqz v1, :cond_5d

    const-string v1, "PkgPredictorService-AufHitCalculation"

    const-string/jumbo v2, "return reason : Predict AppLists size is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_5d
    monitor-exit v0

    return-void

    .line 176
    :cond_5f
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v1, Lcom/android/server/ipm/AufSummary;->totalcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/ipm/AufSummary;->totalcount:I

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "hitFlag":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_69
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_19b

    .line 180
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/AppRanking;

    iget-object v3, v3, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_197

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/AppRanking;

    iget v3, v3, Lcom/android/server/ipm/AppRanking;->userId:I

    if-ne v3, p2, :cond_197

    .line 181
    sget-boolean v3, Lcom/android/server/ipm/AufHitCalculation;->DEBUG:Z

    if-eqz v3, :cond_c7

    const-string v3, "PkgPredictorService-AufHitCalculation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hit ranking : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " /mPredictAppLists size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_c7
    const/4 v3, 0x5

    if-ge v2, v3, :cond_fc

    .line 183
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit5:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit5:I

    .line 184
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit10:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit10:I

    .line 185
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit15:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit15:I

    .line 186
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    .line 187
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    .line 188
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    goto/16 :goto_195

    .line 189
    :cond_fc
    const/16 v3, 0xa

    if-ge v2, v3, :cond_129

    .line 190
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit10:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit10:I

    .line 191
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit15:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit15:I

    .line 192
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    .line 193
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    .line 194
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    goto :goto_195

    .line 195
    :cond_129
    const/16 v3, 0xf

    if-ge v2, v3, :cond_14e

    .line 196
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit15:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit15:I

    .line 197
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    .line 198
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    .line 199
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    goto :goto_195

    .line 200
    :cond_14e
    const/16 v3, 0x14

    if-ge v2, v3, :cond_16b

    .line 201
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    .line 202
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    .line 203
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    goto :goto_195

    .line 204
    :cond_16b
    const/16 v3, 0x19

    if-ge v2, v3, :cond_180

    .line 205
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    .line 206
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    goto :goto_195

    .line 207
    :cond_180
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_18d

    .line 208
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    goto :goto_195

    .line 210
    :cond_18d
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v4, v3, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    .line 212
    :goto_195
    const/4 v1, 0x1

    .line 213
    goto :goto_19b

    .line 179
    :cond_197
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_69

    .line 216
    .end local v1    # "hitFlag":Z
    .end local v2    # "i":I
    :cond_19b
    :goto_19b
    monitor-exit v0
    :try_end_19c
    .catchall {:try_start_49 .. :try_end_19c} :catchall_2b8

    .line 218
    :try_start_19c
    sget-boolean v0, Lcom/android/server/ipm/AufHitCalculation;->DEBUG:Z

    if-eqz v0, :cond_2a9

    .line 219
    const-string v0, "PkgPredictorService-AufHitCalculation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processForegroundChanged process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " TotalCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->totalcount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hit5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit5:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit5:I

    mul-int/lit8 v2, v2, 0x64

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->totalcount:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%] hit10: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit10:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit10:I

    mul-int/lit8 v2, v2, 0x64

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->totalcount:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%] hit15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit15:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit15:I

    mul-int/lit8 v2, v2, 0x64

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->totalcount:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%] hit20: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit20:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit20:I

    mul-int/lit8 v2, v2, 0x64

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->totalcount:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%] hit25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit25:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit25:I

    mul-int/lit8 v2, v2, 0x64

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->totalcount:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%] hit30: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit30:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hit30:I

    mul-int/lit8 v2, v2, 0x64

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->totalcount:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%] etc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v2, v2, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    mul-int/lit8 v2, v2, 0x64

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->totalcount:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a9
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_2a9} :catch_2aa

    .line 233
    :cond_2a9
    goto :goto_2b7

    .line 230
    :catch_2aa
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calculateHitCount err:"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b7
    return-void

    .line 216
    :catchall_2b8
    move-exception v1

    :try_start_2b9
    monitor-exit v0
    :try_end_2ba
    .catchall {:try_start_2b9 .. :try_end_2ba} :catchall_2b8

    throw v1
.end method

.method protected static clearHitCount()V
    .registers 5

    .line 287
    sget-object v0, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    if-nez v0, :cond_10

    .line 288
    sget-boolean v0, Lcom/android/server/ipm/AufHitCalculation;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "PkgPredictorService-AufHitCalculation"

    const-string v1, "Summaried mHitRatio is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_f
    return-void

    .line 292
    :cond_10
    monitor-enter v0

    .line 293
    :try_start_11
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/ipm/AufSummary;->currentTime:J

    .line 294
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget-wide v2, v2, Lcom/android/server/ipm/AufSummary;->currentTime:J

    iput-wide v2, v1, Lcom/android/server/ipm/AufSummary;->resetTime:J

    .line 295
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/ipm/AufSummary;->totalcount:I

    .line 296
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iput v2, v1, Lcom/android/server/ipm/AufSummary;->hit5:I

    .line 297
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iput v2, v1, Lcom/android/server/ipm/AufSummary;->hit10:I

    .line 298
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iput v2, v1, Lcom/android/server/ipm/AufSummary;->hit15:I

    .line 299
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iput v2, v1, Lcom/android/server/ipm/AufSummary;->hit20:I

    .line 300
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iput v2, v1, Lcom/android/server/ipm/AufSummary;->hit25:I

    .line 301
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iput v2, v1, Lcom/android/server/ipm/AufSummary;->hit30:I

    .line 302
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iput v2, v1, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    .line 303
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_1ae

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "fw":Ljava/io/FileWriter;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/ipm_hitcount.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "listingFile":Ljava/io/File;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 307
    invoke-virtual {v1, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 309
    :try_start_52
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/system/ipm_hitcount.txt"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget-wide v3, v3, Lcom/android/server/ipm/AufSummary;->currentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget-wide v3, v3, Lcom/android/server/ipm/AufSummary;->resetTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TotalCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->totalcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit5:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount10 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit10:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount15 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit15:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount20 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount30 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hitEtc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_181} :catch_18d
    .catchall {:try_start_52 .. :try_end_181} :catchall_18b

    .line 326
    nop

    .line 327
    :try_start_182
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_185} :catch_186

    .line 331
    :cond_185
    :goto_185
    goto :goto_1a0

    .line 329
    :catch_186
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1a0

    .line 325
    :catchall_18b
    move-exception v2

    goto :goto_1a1

    .line 321
    :catch_18d
    move-exception v2

    .line 322
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_18e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    const-string v3, "clearHitCount err:"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19a
    .catchall {:try_start_18e .. :try_end_19a} :catchall_18b

    .line 326
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_185

    .line 327
    :try_start_19c
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_19f} :catch_186

    goto :goto_185

    .line 333
    :goto_1a0
    return-void

    .line 326
    :goto_1a1
    if-eqz v0, :cond_1ac

    .line 327
    :try_start_1a3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a6} :catch_1a7

    goto :goto_1ac

    .line 329
    :catch_1a7
    move-exception v3

    .line 330
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1ad

    .line 331
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1ac
    :goto_1ac
    nop

    .line 332
    :goto_1ad
    throw v2

    .line 303
    .end local v0    # "fw":Ljava/io/FileWriter;
    .end local v1    # "listingFile":Ljava/io/File;
    :catchall_1ae
    move-exception v1

    :try_start_1af
    monitor-exit v0
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1ae

    throw v1
.end method

.method protected static getAufSummary()Lcom/android/server/ipm/AufSummary;
    .registers 1

    .line 336
    sget-object v0, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    return-object v0
.end method


# virtual methods
.method protected calculateMessage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgUid"    # I

    .line 237
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 238
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 241
    iget-object v1, p0, Lcom/android/server/ipm/AufHitCalculation;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 242
    sget-boolean v1, Lcom/android/server/ipm/AufHitCalculation;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "PkgPredictorService-AufHitCalculation"

    const-string/jumbo v2, "processForegroundChanged sendMessageDelayed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1f
    return-void
.end method

.method public getPredictApplists()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "applists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    monitor-enter v1

    .line 342
    :try_start_8
    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/AppRanking;

    .line 343
    .local v3, "a":Lcom/android/server/ipm/AppRanking;
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    nop

    .end local v3    # "a":Lcom/android/server/ipm/AppRanking;
    goto :goto_e

    .line 345
    :cond_26
    monitor-exit v1

    .line 346
    return-object v0

    .line 345
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method isPredictedAppForMARs(ILjava/lang/String;)Z
    .registers 9
    .param p1, "bucketSize"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 351
    sget-object v0, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    if-lez p1, :cond_32

    if-nez p2, :cond_a

    goto :goto_32

    .line 353
    :cond_a
    monitor-enter v0

    .line 354
    :try_start_b
    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 355
    .local v2, "size":I
    if-ge v2, p1, :cond_14

    .line 356
    move p1, v2

    .line 357
    :cond_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, p1, :cond_2d

    .line 358
    sget-object v4, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/AppRanking;

    .line 359
    .local v4, "a":Lcom/android/server/ipm/AppRanking;
    iget-object v5, v4, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 360
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 357
    .end local v4    # "a":Lcom/android/server/ipm/AppRanking;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 362
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2d
    monitor-exit v0

    .line 363
    return v1

    .line 362
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw v1

    .line 352
    :cond_32
    :goto_32
    return v1
.end method

.method protected updateHitCount()V
    .registers 7

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "fw":Ljava/io/FileWriter;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/ipm_hitcount.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "listingFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    monitor-enter v2

    .line 255
    :try_start_b
    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/ipm/AufSummary;->currentTime:J

    .line 256
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_178

    .line 257
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 258
    invoke-virtual {v1, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 260
    :try_start_1b
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/system/ipm_hitcount.txt"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget-wide v3, v3, Lcom/android/server/ipm/AufSummary;->currentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget-wide v3, v3, Lcom/android/server/ipm/AufSummary;->resetTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TotalCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->totalcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit5:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount10 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit10:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount15 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit15:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount20 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit20:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit25:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HitCount30 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hit30:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hitEtc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/AufHitCalculation;->mHitRatio:Lcom/android/server/ipm/AufSummary;

    iget v3, v3, Lcom/android/server/ipm/AufSummary;->hitEtc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_14a} :catch_156
    .catchall {:try_start_1b .. :try_end_14a} :catchall_154

    .line 277
    nop

    .line 278
    :try_start_14b
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14e} :catch_14f

    .line 282
    :cond_14e
    :goto_14e
    goto :goto_16a

    .line 280
    :catch_14f
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_16a

    .line 276
    :catchall_154
    move-exception v2

    goto :goto_16b

    .line 272
    :catch_156
    move-exception v2

    .line 273
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_157
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    const-string/jumbo v3, "updateHitCount err:"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catchall {:try_start_157 .. :try_end_164} :catchall_154

    .line 277
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_14e

    .line 278
    :try_start_166
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_169} :catch_14f

    goto :goto_14e

    .line 284
    :goto_16a
    return-void

    .line 277
    :goto_16b
    if-eqz v0, :cond_176

    .line 278
    :try_start_16d
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_170} :catch_171

    goto :goto_176

    .line 280
    :catch_171
    move-exception v3

    .line 281
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_177

    .line 282
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_176
    :goto_176
    nop

    .line 283
    :goto_177
    throw v2

    .line 256
    :catchall_178
    move-exception v3

    :try_start_179
    monitor-exit v2
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    throw v3
.end method

.method protected updatePredictApplists(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/AppRanking;",
            ">;)V"
        }
    .end annotation

    .line 246
    .local p1, "predictionLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/AppRanking;>;"
    sget-object v0, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    monitor-enter v0

    .line 247
    :try_start_3
    sput-object p1, Lcom/android/server/ipm/AufHitCalculation;->mPredictAppLists:Ljava/util/ArrayList;

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
