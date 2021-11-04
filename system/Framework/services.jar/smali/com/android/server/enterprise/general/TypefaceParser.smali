.class public Lcom/android/server/enterprise/general/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "displayname"

.field private static final NODE_DROIDNAME:Ljava/lang/String; = "droidname"

.field private static final NODE_FILE:Ljava/lang/String; = "file"

.field private static final NODE_FILENAME:Ljava/lang/String; = "filename"

.field private static final NODE_FONT:Ljava/lang/String; = "font"

.field private static final NODE_MONOSPACE:Ljava/lang/String; = "monospace"

.field private static final NODE_SANS:Ljava/lang/String; = "sans"

.field private static final NODE_SERIF:Ljava/lang/String; = "serif"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/android/server/enterprise/general/Typeface;

.field private mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    .line 102
    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 312
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_f

    .line 314
    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFile;->setFileName(Ljava/lang/String;)V

    goto :goto_1d

    .line 318
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_1d

    .line 320
    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    .line 324
    :cond_1d
    :goto_1d
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 230
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 232
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    goto/16 :goto_7e

    .line 236
    :cond_d
    const-string/jumbo v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 238
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    goto :goto_7e

    .line 242
    :cond_19
    const-string/jumbo v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 244
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    goto :goto_7e

    .line 248
    :cond_25
    const-string/jumbo v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 250
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    goto :goto_7e

    .line 254
    :cond_31
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 256
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    .line 258
    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    if-eqz v0, :cond_7e

    .line 260
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_4d

    .line 262
    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 266
    :cond_4d
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_5b

    .line 268
    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 272
    :cond_5b
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_7e

    .line 274
    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 282
    :cond_69
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 284
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    goto :goto_7e

    .line 288
    :cond_74
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 290
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    .line 296
    :cond_7e
    :goto_7e
    return-void
.end method

.method public getParsedData()Lcom/android/server/enterprise/general/Typeface;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    return-object v0
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    .line 130
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 160
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 162
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    .line 164
    const-string v0, "displayname"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "attrValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/general/Typeface;->setName(Ljava/lang/String;)V

    .line 168
    .end local v0    # "attrValue":Ljava/lang/String;
    goto :goto_62

    .line 170
    :cond_17
    const-string/jumbo v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 172
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    goto :goto_62

    .line 176
    :cond_23
    const-string/jumbo v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 178
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    goto :goto_62

    .line 182
    :cond_2f
    const-string/jumbo v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 184
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    goto :goto_62

    .line 188
    :cond_3b
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 190
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    .line 192
    new-instance v0, Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/TypefaceFile;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    goto :goto_62

    .line 196
    :cond_4d
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 198
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    goto :goto_62

    .line 202
    :cond_58
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 204
    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    .line 210
    :cond_62
    :goto_62
    return-void
.end method
