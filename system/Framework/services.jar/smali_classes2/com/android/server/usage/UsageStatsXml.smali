.class public Lcom/android/server/usage/UsageStatsXml;
.super Ljava/lang/Object;
.source "UsageStatsXml.java"


# static fields
.field static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final TAG:Ljava/lang/String; = "UsageStatsXml"

.field private static final USAGESTATS_TAG:Ljava/lang/String; = "usagestats"

.field private static final VERSION_ATTR:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const-string v0, "Unrecognized version "

    const-string v1, "UsageStatsXml"

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 38
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_8
    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v3, "usagestats"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 40
    const/4 v3, 0x0

    const-string/jumbo v4, "version"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_1c} :catch_5d

    .line 42
    .local v3, "versionStr":Ljava/lang/String;
    :try_start_1c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 44
    invoke-static {v2, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    .line 45
    nop

    .line 54
    nop

    .line 58
    .end local v3    # "versionStr":Ljava/lang/String;
    nop

    .line 59
    return-void

    .line 48
    .restart local v3    # "versionStr":Ljava/lang/String;
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "versionStr":Ljava/lang/String;
    .end local p0    # "in":Ljava/io/InputStream;
    .end local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    throw v4
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_51} :catch_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_51} :catch_5d

    .line 51
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "versionStr":Ljava/lang/String;
    .restart local p0    # "in":Ljava/io/InputStream;
    .restart local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    :catch_51
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_52
    const-string v4, "Bad version"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p0    # "in":Ljava/io/InputStream;
    .end local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    throw v4
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_5d} :catch_5d

    .line 55
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "versionStr":Ljava/lang/String;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "in":Ljava/io/InputStream;
    .restart local p1    # "statsOut":Lcom/android/server/usage/IntervalStats;
    :catch_5d
    move-exception v0

    .line 56
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "Failed to parse Xml"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
