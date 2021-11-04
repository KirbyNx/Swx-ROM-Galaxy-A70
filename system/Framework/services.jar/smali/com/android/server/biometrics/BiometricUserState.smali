.class public abstract Lcom/android/server/biometrics/BiometricUserState;
.super Ljava/lang/Object;
.source "BiometricUserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserState"


# instance fields
.field protected final mBiometrics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mFile:Ljava/io/File;

.field private final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 92
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/android/server/biometrics/BiometricUserState$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricUserState$1;-><init>(Lcom/android/server/biometrics/BiometricUserState;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    .line 93
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricUserState;->getFileForUser(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    .line 94
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricUserState;->mContext:Landroid/content/Context;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->readStateSyncLocked()V

    .line 97
    monitor-exit p0

    .line 98
    return-void

    .line 97
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private getFileForUser(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 164
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricUserState;->getBiometricFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isUnique(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 155
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 156
    .local v1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;, "TT;"
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 157
    const/4 v0, 0x0

    return v0

    .line 159
    .end local v1    # "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;, "TT;"
    :cond_1e
    goto :goto_6

    .line 160
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method private parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 215
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2d

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 216
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2d

    .line 217
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 218
    goto :goto_4

    .line 221
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "tagName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricUserState;->getBiometricsTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricUserState;->parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 225
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2c
    goto :goto_4

    .line 226
    :cond_2d
    return-void
.end method

.method private readStateSyncLocked()V
    .registers 7

    .line 174
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    const-string v0, "UserState"

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 175
    return-void

    .line 178
    :cond_b
    :try_start_b
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_60

    .line 182
    .local v1, "in":Ljava/io/FileInputStream;
    nop

    .line 184
    :try_start_13
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 185
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v2}, Lcom/android/server/biometrics/BiometricUserState;->parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_1e} :catch_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_24
    .catchall {:try_start_13 .. :try_end_1e} :catchall_22

    .line 206
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 207
    goto :goto_5b

    .line 206
    :catchall_22
    move-exception v0

    goto :goto_5c

    .line 188
    :catch_24
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readStateSyncLocked: Failed parsing settings file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_22

    .line 199
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42
    .catchall {:try_start_3c .. :try_end_41} :catchall_22

    .line 203
    goto :goto_1e

    .line 200
    :catch_42
    move-exception v3

    .line 201
    .local v3, "e2":Ljava/lang/Exception;
    :try_start_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStateSyncLocked: Failed remove settings file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_22

    goto :goto_1e

    .line 208
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/Exception;
    :goto_5b
    return-void

    .line 206
    :goto_5c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 207
    throw v0

    .line 179
    .end local v1    # "in":Ljava/io/FileInputStream;
    :catch_60
    move-exception v1

    .line 180
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "No fingerprint state"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method private scheduleWriteStateLocked()V
    .registers 2

    .line 168
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method


# virtual methods
.method public addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    .local p1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;, "TT;"
    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->scheduleWriteStateLocked()V

    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 104
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected abstract doWriteState()V
.end method

.method protected abstract getBiometricFile()Ljava/lang/String;
.end method

.method public getBiometrics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 135
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected abstract getBiometricsTag()Ljava/lang/String;
.end method

.method protected abstract getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getNameTemplateResource()I
.end method

.method public getUniqueName()Ljava/lang/String;
    .registers 7

    .line 143
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    const/4 v0, 0x1

    .line 146
    .local v0, "guess":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricUserState;->getNameTemplateResource()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/BiometricUserState;->isUnique(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 148
    return-object v1

    .line 150
    :cond_1c
    nop

    .end local v1    # "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 151
    goto :goto_1
.end method

.method protected abstract parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public removeBiometric(I)V
    .registers 4
    .param p1, "biometricId"    # I

    .line 108
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 110
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 111
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->scheduleWriteStateLocked()V

    .line 113
    goto :goto_24

    .line 109
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    .end local v0    # "i":I
    :cond_24
    :goto_24
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public renameBiometric(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "biometricId"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 120
    .local p0, "this":Lcom/android/server/biometrics/BiometricUserState;, "Lcom/android/server/biometrics/BiometricUserState<TT;>;"
    monitor-enter p0

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 122
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_27

    .line 123
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 124
    .local v1, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    invoke-virtual {v1, p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->setName(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricUserState;->scheduleWriteStateLocked()V

    .line 126
    goto :goto_2a

    .line 121
    .end local v1    # "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 129
    .end local v0    # "i":I
    :cond_2a
    :goto_2a
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2c

    throw v0
.end method
