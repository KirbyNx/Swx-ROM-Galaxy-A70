.class public Lcom/android/server/pm/PmConfigParser;
.super Ljava/lang/Object;
.source "PmConfigParser.java"


# static fields
.field static final DISABLE_VERIFICATION_CONFIG_PATH:Ljava/lang/String; = "/system/etc/disable_verification_allowlist.xml"

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
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

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 55
    .local v0, "outerDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_45

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_45

    .line 58
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 60
    goto :goto_9

    .line 62
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 65
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 67
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_44
    goto :goto_9

    .line 71
    :cond_45
    return-object v1
.end method


# virtual methods
.method parseAllowListPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "xmlFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "PackageInstaller"

    if-nez v1, :cond_12

    .line 31
    const-string v1, "No xml file exists."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_12
    const/4 v1, 0x0

    .line 35
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 36
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_17
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_1c} :catch_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_49
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_33

    .line 37
    .local v4, "fin":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    :try_start_1d
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, v3}, Lcom/android/server/pm/PmConfigParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v5
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_29

    move-object v1, v5

    .line 39
    :try_start_25
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_28} :catch_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_28} :catch_49
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_33

    goto :goto_74

    .line 36
    :catchall_29
    move-exception v5

    :try_start_2a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v6

    :try_start_2f
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "xmlFile":Ljava/io/File;
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p0    # "this":Lcom/android/server/pm/PmConfigParser;
    .end local p1    # "path":Ljava/lang/String;
    :goto_32
    throw v5
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_33} :catch_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_33} :catch_49
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    .line 43
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "xmlFile":Ljava/io/File;
    .restart local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/pm/PmConfigParser;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_33
    move-exception v4

    .line 44
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse allowlist. IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 41
    .end local v4    # "e":Ljava/io/IOException;
    :catch_49
    move-exception v4

    .line 42
    .local v4, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse allowlist. FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    goto :goto_74

    .line 39
    :catch_5f
    move-exception v4

    .line 40
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse allowlist. XmlPullParserException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_74
    nop

    .line 47
    :goto_75
    return-object v1
.end method
