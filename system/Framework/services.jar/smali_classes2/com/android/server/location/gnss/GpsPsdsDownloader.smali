.class public Lcom/android/server/location/gnss/GpsPsdsDownloader;
.super Ljava/lang/Object;
.source "GpsPsdsDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final FAIL_REASON_DOWNLOAD_ERROR:I = 0x2

.field private static final FAIL_REASON_LARGE_DATA:I = 0x3

.field private static final FAIL_REASON_UNKNOWN:I = 0x4

.field private static final FAIL_REASON_UNKNOWN_SERVER:I = 0x1

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final NO_ERROR:I = 0x0

.field private static final READ_TIMEOUT_MS:I

.field private static final TAG:Ljava/lang/String; = "GpsPsdsDownloader"

.field private static final XTRA_DOWNLOAD_FAIL:I = 0x3

.field private static final XTRA_DOWNLOAD_SUCCESS:I = 0x2

.field private static final XTRA_DOWNLOAD_TRIGGER:I = 0x1

.field private static final XTRA_DO_DOWNLOAD:I = 0x1


# instance fields
.field private final mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

.field private mNextServerIndex:I

.field private final mPsdsServers:[Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    const-string v0, "GpsPsdsDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;)V
    .registers 10
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "callback"    # Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "count":I
    const-string v1, "XTRA_SERVER_1"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "server1":Ljava/lang/String;
    const-string v2, "XTRA_SERVER_2"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "server2":Ljava/lang/String;
    const-string v3, "XTRA_SERVER_3"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "server3":Ljava/lang/String;
    if-eqz v1, :cond_1c

    add-int/lit8 v0, v0, 0x1

    .line 81
    :cond_1c
    if-eqz v2, :cond_20

    add-int/lit8 v0, v0, 0x1

    .line 82
    :cond_20
    if-eqz v3, :cond_24

    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_24
    const-string v4, "XTRA_USER_AGENT"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "agent":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 87
    const-string v5, "Android"

    iput-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_37

    .line 89
    :cond_35
    iput-object v4, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mUserAgent:Ljava/lang/String;

    .line 92
    :goto_37
    if-nez v0, :cond_44

    .line 93
    const-string v5, "GpsPsdsDownloader"

    const-string v6, "No PSDS servers were specified in the GPS configuration"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    goto :goto_6d

    .line 96
    :cond_44
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    .line 98
    if-eqz v1, :cond_50

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "count":I
    .local v6, "count":I
    aput-object v1, v5, v0

    move v0, v6

    .line 99
    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_50
    if-eqz v2, :cond_59

    iget-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "count":I
    .restart local v6    # "count":I
    aput-object v2, v5, v0

    move v0, v6

    .line 100
    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_59
    if-eqz v3, :cond_62

    iget-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "count":I
    .restart local v6    # "count":I
    aput-object v3, v5, v0

    move v0, v6

    .line 103
    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_62
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 104
    .local v5, "random":Ljava/util/Random;
    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    .line 106
    .end local v5    # "random":Ljava/util/Random;
    :goto_6d
    return-void
.end method

.method private sendXtraInfoToNsflp(III)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "identifier"    # I
    .param p3, "status"    # I

    .line 208
    iget-object v0, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    if-eqz v0, :cond_26

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    iget-object v1, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mCallback:Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;

    sget-object v2, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->XTRA:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v2}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/server/location/gnss/GnssManagerService$IGnssManagerCallback;->reportProviderStatus(ILjava/lang/Object;)V

    .line 216
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_26
    return-void
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .registers 20
    .param p1, "url"    # Ljava/lang/String;

    .line 145
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    const-string v3, "GpsPsdsDownloader"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading PSDS data from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1e
    const/4 v4, 0x0

    .line 149
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    :try_start_22
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 150
    const-string v0, "Accept"

    const-string v8, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v4, v0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "x-wap-profile"

    const-string/jumbo v8, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v4, v0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 157
    sget v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 159
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 160
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move v8, v0

    .line 161
    .local v8, "statusCode":I
    const/16 v0, 0xc8

    const/4 v9, 0x2

    if-eq v8, v0, :cond_77

    .line 162
    sget-boolean v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    if-eqz v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP error downloading gps PSDS: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_6d
    invoke-direct {v1, v7, v9, v6}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->sendXtraInfoToNsflp(III)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_70} :catch_d7
    .catchall {:try_start_22 .. :try_end_70} :catchall_d5

    .line 166
    nop

    .line 191
    if-eqz v4, :cond_76

    .line 192
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    :cond_76
    return-object v5

    .line 169
    :cond_77
    :try_start_77
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7b} :catch_d7
    .catchall {:try_start_77 .. :try_end_7b} :catchall_d5

    move-object v10, v0

    .line 170
    .local v10, "in":Ljava/io/InputStream;
    :try_start_7c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 171
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x400

    new-array v11, v11, [B

    .line 173
    .local v11, "buffer":[B
    :cond_85
    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    move v13, v12

    .local v13, "count":I
    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eq v12, v14, :cond_b5

    .line 174
    invoke-virtual {v0, v11, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 175
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    int-to-long v14, v12

    const-wide/32 v16, 0xf4240

    cmp-long v12, v14, v16

    if-lez v12, :cond_85

    .line 176
    sget-boolean v9, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    if-eqz v9, :cond_a6

    const-string v9, "PSDS file too large"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_a6
    invoke-direct {v1, v7, v6, v6}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->sendXtraInfoToNsflp(III)V
    :try_end_a9
    .catchall {:try_start_7c .. :try_end_a9} :catchall_c7

    .line 180
    nop

    .line 187
    if-eqz v10, :cond_af

    :try_start_ac
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_d7
    .catchall {:try_start_ac .. :try_end_af} :catchall_d5

    .line 191
    :cond_af
    if-eqz v4, :cond_b4

    .line 192
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    :cond_b4
    return-object v5

    .line 184
    :cond_b5
    :try_start_b5
    invoke-direct {v1, v7, v15, v9}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->sendXtraInfoToNsflp(III)V

    .line 186
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_c7

    .line 187
    if-eqz v10, :cond_c1

    :try_start_be
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_d7
    .catchall {:try_start_be .. :try_end_c1} :catchall_d5

    .line 191
    :cond_c1
    if-eqz v4, :cond_c6

    .line 192
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 186
    :cond_c6
    return-object v9

    .line 169
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "buffer":[B
    .end local v13    # "count":I
    :catchall_c7
    move-exception v0

    move-object v9, v0

    if-eqz v10, :cond_d4

    :try_start_cb
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_d4

    :catchall_cf
    move-exception v0

    move-object v11, v0

    :try_start_d1
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local p0    # "this":Lcom/android/server/location/gnss/GpsPsdsDownloader;
    .end local p1    # "url":Ljava/lang/String;
    :cond_d4
    :goto_d4
    throw v9
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d5} :catch_d7
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_d5

    .line 191
    .end local v8    # "statusCode":I
    .end local v10    # "in":Ljava/io/InputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lcom/android/server/location/gnss/GpsPsdsDownloader;
    .restart local p1    # "url":Ljava/lang/String;
    :catchall_d5
    move-exception v0

    goto :goto_eb

    .line 188
    :catch_d7
    move-exception v0

    .line 189
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_d8
    sget-boolean v8, Lcom/android/server/location/gnss/GpsPsdsDownloader;->DEBUG:Z

    if-eqz v8, :cond_e1

    const-string v8, "Error downloading gps PSDS: "

    invoke-static {v3, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e1
    .catchall {:try_start_d8 .. :try_end_e1} :catchall_d5

    .line 191
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_e1
    if-eqz v4, :cond_e6

    .line 192
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 196
    :cond_e6
    const/4 v0, 0x4

    invoke-direct {v1, v7, v0, v6}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->sendXtraInfoToNsflp(III)V

    .line 198
    return-object v5

    .line 191
    :goto_eb
    if-eqz v4, :cond_f0

    .line 192
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 194
    :cond_f0
    throw v0
.end method

.method downloadPsdsData()[B
    .registers 8

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    .line 112
    .local v1, "startIndex":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v2}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->sendXtraInfoToNsflp(III)V

    .line 115
    iget-object v4, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    if-nez v4, :cond_12

    .line 117
    const/4 v3, 0x3

    invoke-direct {p0, v2, v2, v3}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->sendXtraInfoToNsflp(III)V

    .line 119
    const/4 v2, 0x0

    return-object v2

    .line 123
    :cond_12
    :goto_12
    if-nez v0, :cond_40

    .line 124
    const/16 v4, -0xbc

    invoke-static {v4}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v4

    .line 127
    .local v4, "oldTag":I
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_3b

    move-object v0, v5

    .line 129
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 130
    nop

    .line 133
    iget v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    .line 134
    iget-object v6, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_35

    .line 135
    iput v3, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    .line 138
    :cond_35
    iget v5, p0, Lcom/android/server/location/gnss/GpsPsdsDownloader;->mNextServerIndex:I

    if-ne v5, v1, :cond_3a

    goto :goto_40

    .line 139
    .end local v4    # "oldTag":I
    :cond_3a
    goto :goto_12

    .line 129
    .restart local v4    # "oldTag":I
    :catchall_3b
    move-exception v2

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 130
    throw v2

    .line 141
    .end local v4    # "oldTag":I
    :cond_40
    :goto_40
    return-object v0
.end method
