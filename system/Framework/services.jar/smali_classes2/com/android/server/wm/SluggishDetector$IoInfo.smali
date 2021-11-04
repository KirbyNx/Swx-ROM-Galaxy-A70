.class final Lcom/android/server/wm/SluggishDetector$IoInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    }
.end annotation


# static fields
.field private static final IOSTATS_PATH:Ljava/lang/String; = "/proc/iostats"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$IoInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$IoInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIoInfoData()Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .registers 6

    .line 1159
    new-instance v0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    .line 1161
    .local v0, "ioInfoData":Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    const-string v1, "/proc/iostats"

    # invokes: Lcom/android/server/wm/SluggishDetector;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wm/SluggishDetector;->access$4400(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1162
    .local v1, "lines":[Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 1163
    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 1164
    .local v4, "line":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/SluggishDetector$IoInfo;->getIoInfoDataLineValue(Ljava/lang/String;)Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v5

    .line 1165
    .local v5, "curIoInfoData":Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    # invokes: Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->add(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;)V
    invoke-static {v0, v5}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->access$5100(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;)V

    .line 1163
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "curIoInfoData":Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1172
    :cond_1e
    return-object v0
.end method

.method private static getIoInfoDataLineValue(Ljava/lang/String;)Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .registers 12
    .param p0, "line"    # Ljava/lang/String;

    .line 1180
    new-instance v0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    .line 1181
    .local v0, "ioInfoData":Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1182
    .local v1, "tokens":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1183
    .local v2, "count":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_54

    aget-object v5, v1, v4

    .line 1184
    .local v5, "token":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 1185
    add-int/lit8 v2, v2, 0x1

    .line 1186
    const/16 v6, 0xa

    const/4 v7, 0x6

    if-eq v2, v7, :cond_24

    if-ne v2, v6, :cond_4e

    .line 1188
    :cond_24
    if-ne v2, v7, :cond_2e

    .line 1189
    :try_start_26
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    # setter for: Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mReadByte:J
    invoke-static {v0, v7, v8}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->access$5202(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;J)J

    goto :goto_35

    .line 1191
    :cond_2e
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    # setter for: Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->mWriteByte:J
    invoke-static {v0, v7, v8}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->access$5302(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;J)J
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_35} :catch_36

    .line 1195
    :goto_35
    goto :goto_4e

    .line 1193
    :catch_36
    move-exception v7

    .line 1194
    .local v7, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/android/server/wm/SluggishDetector$IoInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getValue() - parseLong : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_4e
    :goto_4e
    if-ne v2, v6, :cond_51

    .line 1198
    goto :goto_54

    .line 1183
    .end local v5    # "token":Ljava/lang/String;
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1206
    :cond_54
    :goto_54
    return-object v0
.end method
