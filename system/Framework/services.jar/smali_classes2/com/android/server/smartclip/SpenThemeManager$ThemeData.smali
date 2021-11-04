.class Lcom/android/server/smartclip/SpenThemeManager$ThemeData;
.super Ljava/lang/Object;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeData"
.end annotation


# instance fields
.field hotspotX:F

.field hotspotY:F

.field private mContext:Landroid/content/Context;

.field private mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

.field private mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

.field packageNameList:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .line 498
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;-><init>(Lcom/android/server/smartclip/SpenThemeManager;Lcom/android/server/smartclip/SpenThemeManager$1;)V

    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 492
    new-instance p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-direct {p1, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;-><init>(Lcom/android/server/smartclip/SpenThemeManager;Lcom/android/server/smartclip/SpenThemeManager$1;)V

    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 494
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    .line 495
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 496
    iput p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    .line 499
    iput-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mContext:Landroid/content/Context;

    .line 500
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    invoke-virtual {p1, p2}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->readSetting(Landroid/content/Context;)V

    .line 501
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    const-string v0, "/system/media/audio/ui/Pen_att_noti1.ogg"

    const-string v1, "/system/media/audio/ui/Pen_det_noti1.ogg"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->setPaths(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method private makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .registers 7

    .line 641
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    # invokes: Lcom/android/server/smartclip/SpenThemeManager;->getRootDir()Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/smartclip/SpenThemeManager;->access$400(Lcom/android/server/smartclip/SpenThemeManager;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "spen_theme_data_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private parseHoverIconData(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 616
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 617
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    .line 618
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "tag":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 621
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "package"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 624
    iget-object v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    goto :goto_56

    .line 625
    :cond_21
    const-string/jumbo v3, "hotspotX"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 626
    if-eqz v2, :cond_56

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    goto :goto_56

    .line 627
    :cond_33
    const-string/jumbo v3, "hotspotY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 628
    if-eqz v2, :cond_56

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    goto :goto_56

    .line 630
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_45
    const/4 v1, 0x3

    if-ne v0, v1, :cond_56

    .line 631
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 632
    .restart local v1    # "tag":Ljava/lang/String;
    const-string/jumbo v2, "hover-icon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_53} :catch_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_53} :catch_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_53} :catch_5b

    if-eqz v2, :cond_57

    return-void

    .line 630
    .end local v1    # "tag":Ljava/lang/String;
    :cond_56
    :goto_56
    nop

    .line 634
    :cond_57
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 637
    .end local v0    # "type":I
    goto :goto_5f

    .line 635
    :catch_5b
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method

.method private saveElements(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 560
    const-string/jumbo v0, "hotspotY"

    const-string/jumbo v1, "hotspotX"

    const-string/jumbo v2, "package"

    const-string/jumbo v3, "hover-icon"

    const/4 v4, 0x0

    :try_start_d
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    iget-object v5, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_21

    .line 563
    iget-object v5, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    :cond_21
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    iget v2, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    iget v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 571
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_45} :catch_46

    .line 575
    goto :goto_4a

    .line 573
    :catch_46
    move-exception v0

    .line 574
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 576
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4a
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;
    invoke-static {v2}, Lcom/android/server/smartclip/SpenThemeManager;->access$300(Lcom/android/server/smartclip/SpenThemeManager;)Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method


# virtual methods
.method getAttachSoundPath()Ljava/lang/String;
    .registers 2

    .line 516
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method getDetachSoundPath()Ljava/lang/String;
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method public loadData()V
    .registers 8

    .line 580
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 581
    .local v0, "journalFile":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v1

    .line 582
    .local v1, "inFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18

    .line 583
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "There\'s no data file to load"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void

    .line 587
    :cond_18
    const/4 v2, 0x0

    .line 589
    .local v2, "inFileStream":Ljava/io/FileInputStream;
    :try_start_19
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 590
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 591
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 594
    :cond_2c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 595
    .local v4, "type":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_43

    .line 596
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 597
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v6, "hover-icon"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 598
    invoke-direct {p0, v3}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->parseHoverIconData(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_43} :catch_61
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_43} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_43} :catch_47

    .line 601
    .end local v5    # "tag":Ljava/lang/String;
    :cond_43
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    goto :goto_6c

    .line 604
    :catch_47
    move-exception v3

    .line 605
    .local v3, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 602
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_61
    move-exception v3

    .line 603
    .local v3, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "no current wallpaper -- first boot?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_6c
    nop

    .line 608
    :goto_6d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 609
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "load = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;
    invoke-static {v5}, Lcom/android/server/smartclip/SpenThemeManager;->access$300(Lcom/android/server/smartclip/SpenThemeManager;)Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void
.end method

.method saveData()V
    .registers 8

    .line 535
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 536
    .local v0, "journalFile":Lcom/android/internal/util/JournaledFile;
    const/4 v1, 0x0

    .line 537
    .local v1, "outFileStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 539
    .local v2, "outBufferedStream":Ljava/io/BufferedOutputStream;
    :try_start_6
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 540
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v4

    .line 541
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 542
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 544
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 545
    invoke-direct {p0, v3}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->saveElements(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 546
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 548
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 549
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 550
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 551
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_40} :catch_41

    .line 555
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_48

    .line 552
    :catch_41
    move-exception v3

    .line 553
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 554
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 556
    .end local v3    # "e":Ljava/io/IOException;
    :goto_48
    return-void
.end method

.method setAttachSoundPath(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 505
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach sound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 507
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v1, v1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    goto :goto_2b

    .line 509
    :cond_27
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iput-object p1, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 512
    :goto_2b
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->writeSetting(Landroid/content/Context;)V

    .line 513
    return-void
.end method

.method setDetachSoundPath(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 520
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach sound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 522
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v1, v1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    goto :goto_2b

    .line 524
    :cond_27
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iput-object p1, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 527
    :goto_2b
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->writeSetting(Landroid/content/Context;)V

    .line 528
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "icon package name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "icon hotspotX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", hotspotY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
