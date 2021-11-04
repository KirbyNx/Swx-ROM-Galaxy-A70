.class public Lcom/android/server/ipm/NapDataProcessor;
.super Ljava/lang/Object;
.source "NapDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-NapDataProcessor"


# instance fields
.field private features:[[D

.field private labels:[D

.field private mSize:I

.field private mStructure:Lcom/android/server/ipm/NapDataStructure;

.field private negativeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private negativePkgs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/NapDataProcessor;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/ipm/NapDataStructure;)V
    .registers 9
    .param p1, "structure"    # Lcom/android/server/ipm/NapDataStructure;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/NapDataProcessor;->mSize:I

    .line 23
    const-string v1, "android"

    const-string v2, "com.samsung.android.packageinstaller"

    const-string v3, "com.samsung.android.app.galaxyfinder"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ipm/NapDataProcessor;->negativePkgs:[Ljava/lang/String;

    .line 31
    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    sput-boolean v1, Lcom/android/server/ipm/NapDataProcessor;->DEBUG:Z

    .line 32
    iput-object p1, p0, Lcom/android/server/ipm/NapDataProcessor;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/ipm/NapDataProcessor;->negativeMap:Ljava/util/Map;

    .line 34
    iget-object v1, p0, Lcom/android/server/ipm/NapDataProcessor;->negativePkgs:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_23
    if-ge v3, v2, :cond_33

    aget-object v4, v1, v3

    .line 35
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ipm/NapDataProcessor;->negativeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .end local v4    # "pkg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 37
    :cond_33
    return-void
.end method

.method private fillPrevious(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/NapDataProcessor$RowRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/NapDataProcessor$RowRecord;",
            ">;"
        }
    .end annotation

    .line 136
    .local p1, "rowdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 139
    .local v1, "size":I
    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 140
    return-object v0

    .line 143
    :cond_d
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_40

    .line 144
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;

    .line 145
    .local v3, "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/NapDataProcessor$RowRecord;

    iget-object v4, v4, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->previous1:Ljava/lang/String;

    .line 146
    add-int/lit8 v4, v2, -0x2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/NapDataProcessor$RowRecord;

    iget-object v4, v4, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->previous2:Ljava/lang/String;

    .line 147
    add-int/lit8 v4, v2, -0x3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/NapDataProcessor$RowRecord;

    iget-object v4, v4, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->previous3:Ljava/lang/String;

    .line 148
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v3    # "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 150
    .end local v2    # "i":I
    :cond_40
    return-object v0
.end method

.method private readDB(JI)Ljava/util/List;
    .registers 13
    .param p1, "interval"    # J
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/NapDataProcessor$RowRecord;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v1

    .line 44
    .local v1, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v1}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v2

    const-string v3, "PkgPredictorService-NapDataProcessor"

    if-eqz v2, :cond_17

    .line 45
    const-string v2, "get Dataset failed! db is closed!"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-object v0

    .line 49
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    .line 50
    .local v4, "deadline":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " get data from now to launch_time > "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select * from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/ipm/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " where launch_time > "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " order by launch_time limit "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    :try_start_56
    invoke-virtual {v1, v2, v7}, Lcom/android/server/ipm/DBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v6, v7

    .line 55
    if-eqz v6, :cond_cf

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 56
    :goto_63
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_cf

    .line 57
    new-instance v7, Lcom/android/server/ipm/NapDataProcessor$RowRecord;

    invoke-direct {v7, p0}, Lcom/android/server/ipm/NapDataProcessor$RowRecord;-><init>(Lcom/android/server/ipm/NapDataProcessor;)V

    .line 58
    .local v7, "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    const-string/jumbo v8, "running_pkg"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    .line 59
    const-string/jumbo v8, "hour_of_day"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->hour:I

    .line 60
    const-string v8, "day_of_week"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->day:I

    .line 61
    const-string/jumbo v8, "screen_orientation"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->orientation:I

    .line 62
    const-string/jumbo v8, "wifi_status"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->wifi:I

    .line 63
    const-string v8, "bt_status"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->bt:I

    .line 64
    const-string/jumbo v8, "user_id"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->userId:I

    .line 65
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_cd} :catch_d7
    .catchall {:try_start_56 .. :try_end_cd} :catchall_d5

    .line 67
    nop

    .end local v7    # "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    goto :goto_63

    .line 72
    :cond_cf
    if-eqz v6, :cond_de

    .line 73
    :goto_d1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_de

    .line 72
    :catchall_d5
    move-exception v3

    goto :goto_100

    .line 69
    :catch_d7
    move-exception v7

    .line 70
    .local v7, "e":Ljava/lang/Exception;
    :try_start_d8
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_d5

    .line 72
    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_de

    .line 73
    goto :goto_d1

    .line 76
    :cond_de
    :goto_de
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/android/server/ipm/NapDataProcessor;->mSize:I

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/ipm/NapDataProcessor;->mSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " items from db "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v0

    .line 72
    :goto_100
    if-eqz v6, :cond_105

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_105
    throw v3
.end method

.method private removeContinuity(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/NapDataProcessor$RowRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/NapDataProcessor$RowRecord;",
            ">;"
        }
    .end annotation

    .line 119
    .local p1, "rowdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 121
    .local v1, "size":I
    const-string v2, ""

    .line 123
    .local v2, "lastPkg":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_27

    .line 124
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/NapDataProcessor$RowRecord;

    .line 125
    .local v4, "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    if-eqz v2, :cond_1f

    iget-object v5, v4, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 126
    goto :goto_24

    .line 128
    :cond_1f
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v2, v4, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    .line 123
    .end local v4    # "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 132
    .end local v3    # "i":I
    :cond_27
    return-object v0
.end method

.method private removeNegative(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/NapDataProcessor$RowRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/NapDataProcessor$RowRecord;",
            ">;"
        }
    .end annotation

    .line 95
    .local p1, "rowdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 97
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_3e

    .line 98
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;

    .line 99
    .local v3, "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    iget-object v4, p0, Lcom/android/server/ipm/NapDataProcessor;->negativeMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 100
    iget-object v4, p0, Lcom/android/server/ipm/NapDataProcessor;->negativeMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 101
    .local v4, "times":I
    iget-object v5, p0, Lcom/android/server/ipm/NapDataProcessor;->negativeMap:Ljava/util/Map;

    iget-object v6, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    goto :goto_3b

    .line 105
    .end local v4    # "times":I
    :cond_38
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v3    # "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 108
    .end local v2    # "i":I
    :cond_3e
    sget-boolean v2, Lcom/android/server/ipm/NapDataProcessor;->DEBUG:Z

    if-eqz v2, :cond_7c

    .line 109
    iget-object v2, p0, Lcom/android/server/ipm/NapDataProcessor;->negativeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 110
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PkgPredictorService-NapDataProcessor"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_4c

    .line 114
    :cond_7c
    return-object v0
.end method

.method private removeUninstalled(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/NapDataProcessor$RowRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/NapDataProcessor$RowRecord;",
            ">;"
        }
    .end annotation

    .line 82
    .local p1, "rowdata":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 84
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_25

    .line 85
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;

    .line 86
    .local v3, "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    iget-object v4, p0, Lcom/android/server/ipm/NapDataProcessor;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v5, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->userId:I

    iget-object v6, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/ipm/NapDataStructure;->checkUninstalled(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 87
    goto :goto_22

    .line 89
    :cond_1f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v3    # "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 91
    .end local v2    # "i":I
    :cond_25
    return-object v0
.end method


# virtual methods
.method public getFeatures()[[D
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    if-nez v0, :cond_14

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    .line 186
    :cond_14
    iget-object v0, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    return-object v0

    nop

    :array_18
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getLabels()[D
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/server/ipm/NapDataProcessor;->labels:[D

    if-nez v0, :cond_9

    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/ipm/NapDataProcessor;->labels:[D

    .line 191
    :cond_9
    iget-object v0, p0, Lcom/android/server/ipm/NapDataProcessor;->labels:[D

    return-object v0
.end method

.method public getReadDbItems()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/android/server/ipm/NapDataProcessor;->mSize:I

    return v0
.end method

.method public load(IJI)V
    .registers 16
    .param p1, "feature_num"    # I
    .param p2, "interval"    # J
    .param p4, "limit"    # I

    .line 154
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/ipm/NapDataProcessor;->readDB(JI)Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/NapDataProcessor$RowRecord;>;"
    invoke-direct {p0, v0}, Lcom/android/server/ipm/NapDataProcessor;->removeUninstalled(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/android/server/ipm/NapDataProcessor;->removeNegative(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-direct {p0, v0}, Lcom/android/server/ipm/NapDataProcessor;->removeContinuity(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-direct {p0, v0}, Lcom/android/server/ipm/NapDataProcessor;->fillPrevious(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 v5, 0x0

    aput v1, v3, v5

    const-class v1, D

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/android/server/ipm/NapDataProcessor;->labels:[D

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_b8

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;

    .line 166
    .local v3, "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    iget-object v6, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    aget-object v6, v6, v1

    iget v7, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->hour:I

    int-to-double v7, v7

    aput-wide v7, v6, v5

    .line 167
    iget-object v6, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    aget-object v6, v6, v1

    iget v7, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->day:I

    int-to-double v7, v7

    aput-wide v7, v6, v4

    .line 168
    iget-object v6, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/server/ipm/NapDataProcessor;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v8, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->userId:I

    iget-object v9, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->previous1:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v4}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v7

    int-to-double v7, v7

    aput-wide v7, v6, v2

    .line 169
    iget-object v6, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    aget-object v6, v6, v1

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/server/ipm/NapDataProcessor;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v9, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->userId:I

    iget-object v10, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->previous2:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v4}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    aput-wide v8, v6, v7

    .line 170
    iget-object v6, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    aget-object v6, v6, v1

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/server/ipm/NapDataProcessor;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v9, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->userId:I

    iget-object v10, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->previous3:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v4}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v8

    int-to-double v8, v8

    aput-wide v8, v6, v7

    .line 171
    iget-object v6, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    aget-object v6, v6, v1

    const/4 v7, 0x5

    iget v8, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->orientation:I

    int-to-double v8, v8

    aput-wide v8, v6, v7

    .line 172
    iget-object v6, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    aget-object v6, v6, v1

    const/4 v7, 0x6

    iget v8, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->wifi:I

    int-to-double v8, v8

    aput-wide v8, v6, v7

    .line 173
    iget-object v6, p0, Lcom/android/server/ipm/NapDataProcessor;->features:[[D

    aget-object v6, v6, v1

    const/4 v7, 0x7

    iget v8, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->bt:I

    int-to-double v8, v8

    aput-wide v8, v6, v7

    .line 175
    iget-object v6, p0, Lcom/android/server/ipm/NapDataProcessor;->labels:[D

    iget-object v7, p0, Lcom/android/server/ipm/NapDataProcessor;->mStructure:Lcom/android/server/ipm/NapDataStructure;

    iget v8, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->userId:I

    iget-object v9, v3, Lcom/android/server/ipm/NapDataProcessor$RowRecord;->running_pkg:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v2}, Lcom/android/server/ipm/NapDataStructure;->String2Nominal(ILjava/lang/String;I)I

    move-result v7

    int-to-double v7, v7

    aput-wide v7, v6, v1

    .line 164
    .end local v3    # "rr":Lcom/android/server/ipm/NapDataProcessor$RowRecord;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_34

    .line 177
    .end local v1    # "i":I
    :cond_b8
    return-void
.end method
