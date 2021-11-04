.class public Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
.super Ljava/lang/Object;
.source "EnterpriseXmlParser.java"


# static fields
.field private static final ATTR_DEFAULT:Ljava/lang/String; = "default"

.field private static final ATTR_FOREIGN_KEY_NAME:Ljava/lang/String; = "foreignkeyname"

.field private static final ATTR_FOREIGN_REFER_KEY:Ljava/lang/String; = "foreignreferkey"

.field private static final ATTR_FOREIGN_REFER_TABLE:Ljava/lang/String; = "foreignrefertable"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PRIMARY_KEY:Ljava/lang/String; = "primarykey"

.field private static final ATTR_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "EnterpriseXmlParser"


# instance fields
.field private final mCallback:Lcom/android/server/enterprise/storage/TableCallback;

.field private final mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/TableCallback;)V
    .registers 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "cb"    # Lcom/android/server/enterprise/storage/TableCallback;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 66
    iput-object p2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/TableCallback;

    .line 67
    return-void
.end method

.method private getType(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 115
    if-nez p1, :cond_5

    .line 117
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    .line 118
    :cond_5
    const-string/jumbo v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 119
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    .line 120
    :cond_11
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 121
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    .line 122
    :cond_1d
    const-string/jumbo v0, "numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 123
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    .line 124
    :cond_29
    const-string/jumbo v0, "real"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 125
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    .line 128
    :cond_35
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0
.end method

.method private isPrimaryKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .line 111
    if-eqz p1, :cond_d

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method


# virtual methods
.method public parseXML()V
    .registers 13

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_b0

    .line 72
    .local v0, "event":I
    const/4 v1, 0x0

    .line 73
    .local v1, "table":Lcom/android/server/enterprise/storage/Table;
    :goto_7
    const/4 v2, 0x1

    if-eq v0, v2, :cond_af

    .line 74
    const/4 v2, 0x2

    const-string/jumbo v3, "table"

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_15

    goto/16 :goto_a6

    .line 94
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    if-eqz v1, :cond_a6

    .line 96
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/TableCallback;

    invoke-interface {v3, v1}, Lcom/android/server/enterprise/storage/TableCallback;->onTableFound(Lcom/android/server/enterprise/storage/Table;)V

    .line 97
    const/4 v1, 0x0

    goto :goto_a6

    .line 76
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2a
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 77
    .restart local v2    # "tag":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_34} :catch_b0

    const-string/jumbo v4, "name"

    const/4 v5, 0x0

    if-eqz v3, :cond_61

    .line 78
    :try_start_3a
    new-instance v3, Lcom/android/server/enterprise/storage/Table;

    iget-object v6, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v6, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v8, "foreignrefertable"

    .line 79
    invoke-interface {v7, v5, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v9, "foreignreferkey"

    .line 80
    invoke-interface {v8, v5, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v10, "foreignkeyname"

    .line 81
    invoke-interface {v9, v5, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/Table;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 83
    :cond_61
    const-string v3, "column"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    if-eqz v1, :cond_a5

    .line 84
    new-instance v3, Lcom/android/server/enterprise/storage/Column;

    iget-object v6, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 85
    invoke-interface {v6, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v6, "type"

    .line 86
    invoke-interface {v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->getType(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v6, "primarykey"

    .line 87
    invoke-interface {v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->isPrimaryKey(Ljava/lang/String;)Z

    move-result v9

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v6, "properties"

    .line 88
    invoke-interface {v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string v6, "default"

    .line 89
    invoke-interface {v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/storage/Column;-><init>(Ljava/lang/String;Lcom/android/server/enterprise/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/Table;->addColumn(Lcom/android/server/enterprise/storage/Column;)V

    .line 92
    .end local v2    # "tag":Ljava/lang/String;
    :cond_a5
    nop

    .line 102
    :cond_a6
    :goto_a6
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_ac} :catch_b0

    move v0, v2

    goto/16 :goto_7

    .line 107
    .end local v0    # "event":I
    .end local v1    # "table":Lcom/android/server/enterprise/storage/Table;
    :cond_af
    goto :goto_b9

    .line 105
    :catch_b0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseXmlParser"

    const-string/jumbo v2, "parseXML EX:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b9
    return-void
.end method
