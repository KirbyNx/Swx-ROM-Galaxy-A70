.class final Lcom/android/server/am/Pageboost$VramdiskXMLParser;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VramdiskXMLParser"
.end annotation


# static fields
.field private static final mFileListPath:Ljava/lang/String; = "/system/vramdiskddata/vramdiskd.xml"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 13
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "count":I
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 619
    .local v1, "strs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/system/vramdiskddata/vramdiskd.xml"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_53

    .line 620
    .local v2, "is":Ljava/io/InputStream;
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 621
    .local v3, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 622
    .local v4, "dbuild":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 623
    .local v5, "d":Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 624
    .local v6, "element":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->normalize()V

    .line 626
    invoke-interface {v5, p0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 627
    .local v7, "nl":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_25
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_45

    .line 628
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 629
    .local v9, "n":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 630
    .local v10, "n2":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_49

    .line 631
    nop

    .end local v9    # "n":Lorg/w3c/dom/Node;
    .end local v10    # "n2":Lorg/w3c/dom/Node;
    add-int/lit8 v0, v0, 0x1

    .line 627
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 633
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "dbuild":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "d":Lorg/w3c/dom/Document;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "nl":Lorg/w3c/dom/NodeList;
    .end local v8    # "i":I
    :cond_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_53

    .line 635
    .end local v2    # "is":Ljava/io/InputStream;
    goto :goto_57

    .line 619
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_49
    move-exception v3

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v4

    :try_start_4f
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "count":I
    .end local v1    # "strs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local p0    # "tag":Ljava/lang/String;
    :goto_52
    throw v3
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_53

    .line 633
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "count":I
    .restart local v1    # "strs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local p0    # "tag":Ljava/lang/String;
    :catch_53
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_57
    if-lez v0, :cond_5b

    move-object v2, v1

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    return-object v2
.end method
