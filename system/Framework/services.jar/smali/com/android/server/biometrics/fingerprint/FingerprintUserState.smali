.class public Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
.super Lcom/android/server/biometrics/BiometricUserState;
.source "FingerprintUserState.java"


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_EXT_DUPLICATED_CNT:Ljava/lang/String; = "duplicatedCount"

.field private static final ATTR_FINGER_ID:Ljava/lang/String; = "fingerId"

.field private static final ATTR_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field private static final TAG:Ljava/lang/String; = "FingerprintState"

.field private static final TAG_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final TAG_FINGERPRINTS:Ljava/lang/String; = "fingerprints"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricUserState;-><init>(Landroid/content/Context;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 4
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 90
    instance-of v0, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_8

    .line 91
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    goto :goto_f

    .line 93
    :cond_8
    const-string v0, "FingerprintState"

    const-string v1, "Attempted to add non-fingerprint identifier"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_f
    return-void
.end method

.method protected doWriteState()V
    .registers 12

    .line 119
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 123
    .local v0, "destination":Landroid/util/AtomicFile;
    monitor-enter p0

    .line 124
    :try_start_8
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 125
    .local v1, "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_b9

    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_10
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 131
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 132
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 134
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    const-string v4, "fingerprints"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 138
    .local v4, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_38
    if-ge v6, v4, :cond_91

    .line 139
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    .line 140
    .local v7, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const-string v8, "fingerprint"

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    const-string v8, "fingerId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const-string/jumbo v8, "name"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const-string/jumbo v8, "groupId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const-string v8, "deviceId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    const-string v8, "duplicatedCount"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getDuplicatedImageCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v8, "fingerprint"

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    nop

    .end local v7    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 153
    .end local v6    # "i":I
    :cond_91
    const-string v6, "fingerprints"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 155
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9c
    .catchall {:try_start_10 .. :try_end_9c} :catchall_a1

    .line 163
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "count":I
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 164
    nop

    .line 165
    return-void

    .line 158
    :catchall_a1
    move-exception v3

    .line 159
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_a2
    const-string v4, "FingerprintState"

    const-string v5, "Failed to write settings, restoring backup"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 161
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to write fingerprints"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "destination":Landroid/util/AtomicFile;
    .end local v1    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    throw v4
    :try_end_b4
    .catchall {:try_start_a2 .. :try_end_b4} :catchall_b4

    .line 163
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "destination":Landroid/util/AtomicFile;
    .restart local v1    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    :catchall_b4
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 164
    throw v3

    .line 125
    .end local v1    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_b9
    move-exception v1

    :try_start_ba
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v1
.end method

.method protected getBiometricFile()Ljava/lang/String;
    .registers 2

    .line 72
    const-string/jumbo v0, "settings_fingerprint.xml"

    return-object v0
.end method

.method protected getBiometricsTag()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "fingerprints"

    return-object v0
.end method

.method protected getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "array"    # Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 101
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 110
    .local v2, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v10, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    .line 111
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getDuplicatedImageCount()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    .line 110
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v2    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 114
    .end local v1    # "i":I
    :cond_32
    return-object v0
.end method

.method protected getNameTemplateResource()I
    .registers 2

    .line 77
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_8

    .line 79
    const v0, 0x1040498

    return v0

    .line 83
    :cond_8
    const v0, 0x1040b52

    return v0
.end method

.method protected parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 172
    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 174
    .local v2, "outerDepth":I
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v3, v0

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_93

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1c

    .line 175
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_18

    goto :goto_1c

    :cond_18
    move/from16 v18, v2

    goto/16 :goto_95

    .line 176
    :cond_1c
    :goto_1c
    if-eq v3, v0, :cond_8d

    const/4 v0, 0x4

    if-ne v3, v0, :cond_22

    .line 177
    goto :goto_6

    .line 180
    :cond_22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "tagName":Ljava/lang/String;
    const-string v0, "fingerprint"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 182
    const/4 v0, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {v1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v6, "groupId"

    invoke-interface {v1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 184
    .local v13, "groupId":Ljava/lang/String;
    const-string v6, "fingerId"

    invoke-interface {v1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 185
    .local v14, "fingerId":Ljava/lang/String;
    const-string v6, "deviceId"

    invoke-interface {v1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 188
    .local v15, "deviceId":Ljava/lang/String;
    const/4 v6, -0x1

    .line 190
    .local v6, "duplicatedCnt":I
    :try_start_4a
    const-string v7, "duplicatedCount"

    invoke-interface {v1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "cnt":Ljava/lang/String;
    if-eqz v0, :cond_57

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_56} :catch_59

    move v6, v7

    .line 196
    .end local v0    # "cnt":Ljava/lang/String;
    :cond_57
    move v0, v6

    goto :goto_63

    .line 194
    :catch_59
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "FingerprintState"

    const-string/jumbo v8, "parseBiometricsLocked : failed"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    .line 199
    .end local v6    # "duplicatedCnt":I
    .local v0, "duplicatedCnt":I
    :goto_63
    move-object/from16 v12, p0

    iget-object v10, v12, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->mBiometrics:Ljava/util/ArrayList;

    new-instance v11, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 200
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-object v6, v11

    move-object v7, v5

    move/from16 v18, v2

    move-object v1, v10

    move-object v2, v11

    .end local v2    # "outerDepth":I
    .local v18, "outerDepth":I
    move-wide/from16 v10, v16

    move v12, v0

    invoke-direct/range {v6 .. v12}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    .line 199
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 181
    .end local v0    # "duplicatedCnt":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v13    # "groupId":Ljava/lang/String;
    .end local v14    # "fingerId":Ljava/lang/String;
    .end local v15    # "deviceId":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_85
    move/from16 v18, v2

    .line 203
    .end local v2    # "outerDepth":I
    .end local v4    # "tagName":Ljava/lang/String;
    .restart local v18    # "outerDepth":I
    :goto_87
    move-object/from16 v1, p1

    move/from16 v2, v18

    goto/16 :goto_6

    .line 176
    .end local v18    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_8d
    move/from16 v18, v2

    .end local v2    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    move-object/from16 v1, p1

    goto/16 :goto_6

    .line 174
    .end local v18    # "outerDepth":I
    .restart local v2    # "outerDepth":I
    :cond_93
    move/from16 v18, v2

    .line 204
    .end local v2    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_95
    return-void
.end method
