.class final Lcom/android/server/am/Pageboost$BigDataProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BigDataProxy"
.end annotation


# static fields
.field private static CNT_INFO:I = 0x0

.field private static ENABLED:Z = false

.field private static final FILENAME:Ljava/lang/String; = "/data/misc/pageboost/last_bigdata_string"

.field private static mSemHqmManager:Landroid/os/SemHqmManager;

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2896
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 2899
    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/Pageboost$BigDataProxy;->CNT_INFO:I

    .line 2902
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sLock:Ljava/lang/Object;

    .line 2903
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4400()Z
    .registers 1

    .line 2895
    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    return v0
.end method

.method static synthetic access$4500()Ljava/lang/String;
    .registers 1

    .line 2895
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initBigDataProxy()V
    .registers 6

    .line 2907
    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2916
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-eqz v1, :cond_5b

    .line 2917
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bigdata init started"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_5d

    .line 2919
    :try_start_10
    new-instance v1, Ljava/lang/String;

    const-string v2, "/data/misc/pageboost/last_bigdata_string"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 2920
    .local v1, "str":Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2922
    .local v2, "arr":[Ljava/lang/String;
    array-length v3, v2

    sget v4, Lcom/android/server/am/Pageboost$BigDataProxy;->CNT_INFO:I

    if-gt v3, v4, :cond_46

    .line 2923
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bigdata str: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 2925
    :cond_46
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "invalid bigdata file data"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_50} :catch_51
    .catchall {:try_start_10 .. :try_end_50} :catchall_5d

    .line 2929
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "arr":[Ljava/lang/String;
    :goto_50
    goto :goto_5b

    .line 2927
    :catch_51
    move-exception v1

    .line 2928
    .local v1, "e":Ljava/lang/Exception;
    :try_start_52
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bigdata File is not found.."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5b
    :goto_5b
    monitor-exit v0

    .line 2932
    return-void

    .line 2931
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public static keepLastData()V
    .registers 7

    .line 2935
    # getter for: Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$3800()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_67

    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_b

    goto :goto_67

    .line 2939
    :cond_b
    sget-object v0, Lcom/android/server/am/Pageboost$BigDataProxy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2940
    :try_start_e
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/misc/pageboost/last_bigdata_string"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_55
    .catchall {:try_start_e .. :try_end_15} :catchall_53

    .line 2941
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_15
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_49

    .line 2942
    .local v2, "outwriter":Ljava/io/OutputStreamWriter;
    :try_start_1a
    const-string v3, " "

    .line 2943
    .local v3, "data":Ljava/lang/String;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "write : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_3f

    .line 2945
    .end local v3    # "data":Ljava/lang/String;
    :try_start_38
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_49

    .end local v2    # "outwriter":Ljava/io/OutputStreamWriter;
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_55
    .catchall {:try_start_3b .. :try_end_3e} :catchall_53

    .line 2948
    .end local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_63

    .line 2940
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "outwriter":Ljava/io/OutputStreamWriter;
    :catchall_3f
    move-exception v3

    :try_start_40
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v4

    :try_start_45
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "out":Ljava/io/FileOutputStream;
    :goto_48
    throw v3
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    .end local v2    # "outwriter":Ljava/io/OutputStreamWriter;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :catchall_49
    move-exception v2

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v3

    :try_start_4f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_52
    throw v2
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_55
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 2949
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :catchall_53
    move-exception v1

    goto :goto_65

    .line 2945
    :catch_55
    move-exception v1

    .line 2946
    .local v1, "e":Ljava/lang/Exception;
    :try_start_56
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "invalid bigdata file data"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2949
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_63
    monitor-exit v0

    .line 2950
    return-void

    .line 2949
    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_53

    throw v1

    .line 2936
    :cond_67
    :goto_67
    return-void
.end method

.method private static makeString()Ljava/lang/String;
    .registers 1

    .line 2964
    const-string v0, " "

    .line 2965
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method public static sendData()V
    .registers 11

    .line 2954
    sget-boolean v0, Lcom/android/server/am/Pageboost$BigDataProxy;->ENABLED:Z

    if-nez v0, :cond_5

    .line 2955
    return-void

    .line 2958
    :cond_5
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->makeString()Ljava/lang/String;

    move-result-object v0

    .line 2960
    .local v0, "data":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/Pageboost$BigDataProxy;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string v4, "VRDK"

    const-string/jumbo v5, "ph"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v9, v0

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2961
    return-void
.end method
