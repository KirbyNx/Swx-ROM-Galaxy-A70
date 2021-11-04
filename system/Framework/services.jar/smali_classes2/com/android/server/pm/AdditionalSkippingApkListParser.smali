.class public Lcom/android/server/pm/AdditionalSkippingApkListParser;
.super Ljava/lang/Object;
.source "AdditionalSkippingApkListParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdditionalSkippingApkListParser"

.field private static final TAG_APK:Ljava/lang/String; = "apk"

.field private static final TAG_CARRIER:Ljava/lang/String; = "carrier"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_REVERSE:Ljava/lang/String; = "reverse"


# instance fields
.field private final mAdditionalSkippingApkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReverseSkippingApkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSkippingApkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mSkippingApkMap:Ljava/util/Map;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mReverseSkippingApkMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/etc/additional_skipping_apk_list.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/pm/AdditionalSkippingApkListParser;->parseSkippingApkList(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "listFilePath"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mSkippingApkMap:Ljava/util/Map;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mReverseSkippingApkMap:Ljava/util/Map;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/pm/AdditionalSkippingApkListParser;->parseSkippingApkList(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static getProductName()Ljava/lang/String;
    .registers 1

    .line 56
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method private parseApks(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 127
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 129
    .local v0, "outerDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_44

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 131
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_44

    .line 132
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 133
    goto :goto_9

    .line 136
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "apk"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 138
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "apkName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_43

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 140
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "apkName":Ljava/lang/String;
    :cond_43
    goto :goto_9

    .line 144
    :cond_44
    return-object v1
.end method

.method private parseSkippingApkList(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "xmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "AdditionalSkippingApkListParser"

    if-nez v1, :cond_13

    .line 62
    const-string v1, "No additional skipping apk list file exists."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_13
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 67
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_17
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_1c} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_47
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_31

    .line 68
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_1d
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v1}, Lcom/android/server/pm/AdditionalSkippingApkListParser;->parseSkippingApkListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 70
    :try_start_23
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_26} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_47
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_31

    goto :goto_72

    .line 67
    :catchall_27
    move-exception v4

    :try_start_28
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v5

    :try_start_2d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "xmlFile":Ljava/io/File;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p0    # "this":Lcom/android/server/pm/AdditionalSkippingApkListParser;
    .end local p1    # "path":Ljava/lang/String;
    :goto_30
    throw v4
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_31} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_31} :catch_47
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_31

    .line 74
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "xmlFile":Ljava/io/File;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/pm/AdditionalSkippingApkListParser;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_31
    move-exception v3

    .line 75
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse allowlist. IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 72
    .end local v3    # "e":Ljava/io/IOException;
    :catch_47
    move-exception v3

    .line 73
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse allowlist. FileNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_72

    .line 70
    :catch_5d
    move-exception v3

    .line 71
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse allowlist. XmlPullParserException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_72
    nop

    .line 77
    :goto_73
    return-void
.end method

.method private parseSkippingApkListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 83
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 85
    .local v0, "outerDepth":I
    invoke-static {}, Lcom/android/server/pm/AdditionalSkippingApkListParser;->getProductName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "productName":Ljava/lang/String;
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_16

    goto/16 :goto_b6

    .line 89
    :cond_16
    nop

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 89
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "deviceCarrierName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceCarrierName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdditionalSkippingApkListParser"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_3a
    :goto_3a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v6, v4

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v4, v7, :cond_b5

    if-ne v6, v3, :cond_4a

    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_b5

    .line 95
    :cond_4a
    if-eq v6, v3, :cond_3a

    const/4 v4, 0x4

    if-ne v6, v4, :cond_50

    .line 96
    goto :goto_3a

    .line 99
    :cond_50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "elementName":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x210adef8

    if-eq v8, v9, :cond_5f

    :cond_5e
    goto :goto_68

    :cond_5f
    const-string v8, "carrier"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    const/4 v7, 0x0

    :goto_68
    if-eqz v7, :cond_7f

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid element name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 102
    :cond_7f
    const/4 v7, 0x0

    const-string/jumbo v8, "name"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "xmlCarrierName":Ljava/lang/String;
    const-string/jumbo v9, "reverse"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "reverseString":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b4

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/pm/AdditionalSkippingApkListParser;->parseApks(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v9

    .line 106
    .local v9, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 107
    .local v10, "reverse":Z
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 108
    if-nez v10, :cond_b4

    .line 109
    iget-object v11, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b4

    .line 112
    :cond_ad
    if-eqz v10, :cond_b4

    .line 113
    iget-object v11, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    .end local v4    # "elementName":Ljava/lang/String;
    .end local v7    # "reverseString":Ljava/lang/String;
    .end local v8    # "xmlCarrierName":Ljava/lang/String;
    .end local v9    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "reverse":Z
    :cond_b4
    :goto_b4
    goto :goto_3a

    .line 123
    :cond_b5
    return-void

    .line 87
    .end local v2    # "deviceCarrierName":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_b6
    :goto_b6
    return-void
.end method


# virtual methods
.method public getAdditionalSkippingApkList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    return-object v0
.end method

.method public hasAdditionalSkippingApkList()Z
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/server/pm/AdditionalSkippingApkListParser;->mAdditionalSkippingApkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
