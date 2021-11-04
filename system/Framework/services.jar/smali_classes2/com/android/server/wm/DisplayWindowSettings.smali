.class Lcom/android/server/wm/DisplayWindowSettings;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;,
        Lcom/android/server/wm/DisplayWindowSettings$Entry;,
        Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;,
        Lcom/android/server/wm/DisplayWindowSettings$DisplayIdentifierType;
    }
.end annotation


# static fields
.field private static final DISPLAY_SETTINGS_FILE_NAME:Ljava/lang/String; = "display_settings.xml"

.field private static final IDENTIFIER_PORT:I = 0x1

.field private static final IDENTIFIER_UNIQUE_ID:I = 0x0

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VENDOR_DISPLAY_SETTINGS_PATH:Ljava/lang/String; = "etc/display_settings.xml"

.field private static final WM_DISPLAY_COMMIT_TAG:Ljava/lang/String; = "wm-displays"


# instance fields
.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/DisplayWindowSettings$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentifier:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 156
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V

    .line 157
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "storageImpl"    # Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    .line 161
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 162
    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    .line 163
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->readSettings()V

    .line 164
    return-void
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;

    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 539
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_e

    goto :goto_d

    :cond_c
    move v1, p3

    :goto_d
    return v1

    .line 541
    .end local v0    # "str":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .registers 6
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "identifier":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-object v2, v1

    .local v2, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-eqz v1, :cond_10

    .line 171
    return-object v2

    .line 174
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-object v2, v1

    if-eqz v1, :cond_22

    .line 176
    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/DisplayWindowSettings;->updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    return-object v1

    .line 178
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 686
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v0, :cond_2e

    .line 688
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    instance-of v0, v0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_2e

    .line 689
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v0

    .line 690
    .local v0, "port":B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 693
    .end local v0    # "port":B
    :cond_2e
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;

    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 526
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_e

    goto :goto_d

    :cond_c
    move v1, p3

    :goto_d
    return v1

    .line 528
    .end local v0    # "str":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .registers 6
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 183
    .local v0, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_12

    :cond_8
    new-instance v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    :goto_12
    return-object v1
.end method

.method private getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 9
    .param p1, "entry"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p2, "displayId"    # I

    .line 256
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I
    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v1

    goto :goto_9

    .line 257
    :cond_8
    move v1, v0

    :goto_9
    nop

    .line 260
    .local v1, "windowingMode":I
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_17

    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v4, :cond_17

    .line 262
    return v3

    .line 265
    :cond_17
    if-nez v1, :cond_48

    .line 269
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 270
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    move-result v0

    goto :goto_31

    .line 271
    :cond_28
    iget-object v5, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v5, :cond_31

    if-eqz p2, :cond_31

    move v0, v3

    :cond_31
    :goto_31
    nop

    .line 285
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v0, "forceDesktopMode":Z
    const/4 v4, 0x0

    .line 289
    .local v4, "isDexMode":Z
    iget-object v5, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v5, :cond_46

    iget-object v5, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v5, :cond_45

    if-nez v0, :cond_45

    if-eqz v4, :cond_46

    .line 290
    :cond_45
    goto :goto_47

    .line 291
    :cond_46
    move v2, v3

    :goto_47
    move v1, v2

    .line 293
    .end local v0    # "forceDesktopMode":Z
    .end local v4    # "isDexMode":Z
    :cond_48
    return v1
.end method

.method private readConfig(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    const-string/jumbo v0, "identifier"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    .line 577
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 578
    return-void
.end method

.method private readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_89

    .line 550
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    move-object v0, v2

    .line 551
    .local v0, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    const-string/jumbo v2, "windowingMode"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 553
    const-string/jumbo v2, "userRotationMode"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 555
    const-string/jumbo v2, "userRotation"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 557
    const-string v2, "forcedWidth"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 558
    const-string v2, "forcedHeight"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 559
    const-string v2, "forcedDensity"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 560
    const-string v2, "forcedScalingMode"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 562
    const-string/jumbo v2, "removeContentMode"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 564
    const-string/jumbo v2, "shouldShowWithInsecureKeyguard"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 566
    const-string/jumbo v2, "shouldShowSystemDecors"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 567
    const-string/jumbo v2, "shouldShowIme"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 568
    const-string v2, "fixedToUserRotation"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 569
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .end local v0    # "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    :cond_89
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 572
    return-void
.end method

.method private readSettings()V
    .registers 12

    .line 459
    const-string v0, "Failed parsing "

    const-string v1, "WindowManager"

    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->openRead()Ljava/io/InputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_160

    .line 463
    .local v2, "stream":Ljava/io/InputStream;
    nop

    .line 464
    const/4 v3, 0x0

    .line 466
    .local v3, "success":Z
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 467
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 469
    :goto_19
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_25

    if-eq v6, v7, :cond_25

    goto :goto_19

    .line 474
    :cond_25
    if-ne v6, v8, :cond_89

    .line 478
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 479
    .local v5, "outerDepth":I
    :cond_2b
    :goto_2b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v6, v8

    if-eq v8, v7, :cond_79

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3b

    .line 480
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_79

    .line 481
    :cond_3b
    if-eq v6, v8, :cond_2b

    const/4 v8, 0x4

    if-ne v6, v8, :cond_41

    .line 482
    goto :goto_2b

    .line 485
    :cond_41
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 486
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "display"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 487
    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayWindowSettings;->readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_78

    .line 488
    :cond_51
    const-string v9, "config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 489
    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayWindowSettings;->readConfig(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_78

    .line 491
    :cond_5d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <display-settings>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 491
    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_78
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_78} :catch_132
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_78} :catch_112
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_78} :catch_f2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_78} :catch_d3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_78} :catch_b4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_78} :catch_95
    .catchall {:try_start_c .. :try_end_78} :catchall_92

    .line 495
    .end local v8    # "tagName":Ljava/lang/String;
    :goto_78
    goto :goto_2b

    .line 496
    :cond_79
    const/4 v3, 0x1

    .line 510
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "outerDepth":I
    .end local v6    # "type":I
    if-nez v3, :cond_81

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_81
    :try_start_81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_86

    .line 516
    :goto_84
    goto/16 :goto_152

    .line 515
    :catch_86
    move-exception v0

    .line 517
    goto/16 :goto_152

    .line 475
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_89
    :try_start_89
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/wm/DisplayWindowSettings;
    throw v5
    :try_end_92
    .catch Ljava/lang/IllegalStateException; {:try_start_89 .. :try_end_92} :catch_132
    .catch Ljava/lang/NullPointerException; {:try_start_89 .. :try_end_92} :catch_112
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_92} :catch_f2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_92} :catch_d3
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_92} :catch_b4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_89 .. :try_end_92} :catch_95
    .catchall {:try_start_89 .. :try_end_92} :catchall_92

    .line 510
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .restart local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/wm/DisplayWindowSettings;
    :catchall_92
    move-exception v0

    goto/16 :goto_153

    .line 507
    :catch_95
    move-exception v4

    .line 508
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_92

    .line 510
    nop

    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_b0

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_b0
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_86

    goto :goto_84

    .line 505
    :catch_b4
    move-exception v4

    .line 506
    .local v4, "e":Ljava/io/IOException;
    :try_start_b5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_b5 .. :try_end_c7} :catchall_92

    .line 510
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-nez v3, :cond_cf

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_cf
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_86

    goto :goto_84

    .line 503
    :catch_d3
    move-exception v4

    .line 504
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_d4 .. :try_end_e6} :catchall_92

    .line 510
    nop

    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_ee

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_ee
    :try_start_ee
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_86

    goto :goto_84

    .line 501
    :catch_f2
    move-exception v4

    .line 502
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_f3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_f3 .. :try_end_105} :catchall_92

    .line 510
    nop

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_10d

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_10d
    :try_start_10d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_86

    goto/16 :goto_84

    .line 499
    :catch_112
    move-exception v4

    .line 500
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_113 .. :try_end_125} :catchall_92

    .line 510
    nop

    .end local v4    # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_12d

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_12d
    :try_start_12d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_86

    goto/16 :goto_84

    .line 497
    :catch_132
    move-exception v4

    .line 498
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catchall {:try_start_133 .. :try_end_145} :catchall_92

    .line 510
    nop

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_14d

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_14d
    :try_start_14d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_150} :catch_86

    goto/16 :goto_84

    .line 518
    :goto_152
    return-void

    .line 510
    :goto_153
    if-nez v3, :cond_15a

    .line 511
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 514
    :cond_15a
    :try_start_15a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15d} :catch_15e

    .line 516
    goto :goto_15f

    .line 515
    :catch_15e
    move-exception v1

    .line 517
    :goto_15f
    throw v0

    .line 460
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "success":Z
    :catch_160
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "No existing display settings, starting empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method private removeEntry(Landroid/view/DisplayInfo;)Z
    .registers 7
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 677
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 679
    .local v0, "removed":Z
    :goto_11
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    or-int/2addr v0, v3

    .line 680
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    or-int/2addr v0, v1

    .line 681
    return v0
.end method

.method private updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .registers 6
    .param p1, "entry"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 192
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    .line 193
    .local v0, "newEntry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-object v0
.end method

.method private writeSettings()V
    .registers 12

    .line 599
    const-string v0, "display"

    const-string v1, "config"

    const-string v2, "display-settings"

    const-string v3, "WindowManager"

    :try_start_8
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v4}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->startWrite()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_168

    .line 603
    .local v4, "stream":Ljava/io/OutputStream;
    nop

    .line 606
    :try_start_f
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 607
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 608
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 610
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    const-string/jumbo v7, "identifier"

    iget v9, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 617
    .local v7, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 618
    const-string/jumbo v9, "name"

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_72

    .line 620
    const-string/jumbo v9, "windowingMode"

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    :cond_72
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_86

    .line 623
    const-string/jumbo v9, "userRotationMode"

    .line 624
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 623
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    :cond_86
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_9a

    .line 627
    const-string/jumbo v9, "userRotation"

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    :cond_9a
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_c0

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_c0

    .line 630
    const-string v9, "forcedWidth"

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    const-string v9, "forcedHeight"

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    :cond_c0
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_d3

    .line 634
    const-string v9, "forcedDensity"

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    :cond_d3
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_e6

    .line 637
    const-string v9, "forcedScalingMode"

    .line 638
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 637
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    :cond_e6
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_fa

    .line 641
    const-string/jumbo v9, "removeContentMode"

    .line 642
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 641
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 644
    :cond_fa
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_10e

    .line 645
    const-string/jumbo v9, "shouldShowWithInsecureKeyguard"

    .line 646
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 645
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    :cond_10e
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_122

    .line 649
    const-string/jumbo v9, "shouldShowSystemDecors"

    .line 650
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 649
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    :cond_122
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_136

    .line 653
    const-string/jumbo v9, "shouldShowIme"

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    :cond_136
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_149

    .line 656
    const-string v9, "fixedToUserRotation"

    .line 657
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 656
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 659
    :cond_149
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 660
    nop

    .end local v7    # "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    goto/16 :goto_45

    .line 662
    :cond_14f
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 663
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v0, v4, v6}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15a} :catch_15b

    .line 668
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_167

    .line 665
    :catch_15b
    move-exception v0

    .line 666
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to write display window settings."

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 669
    .end local v0    # "e":Ljava/io/IOException;
    :goto_167
    return-void

    .line 600
    .end local v4    # "stream":Ljava/io/OutputStream;
    :catch_168
    move-exception v0

    .line 601
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write display settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method private writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "changedEntry"    # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 581
    # invokes: Lcom/android/server/wm/DisplayWindowSettings$Entry;->isEmpty()Z
    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 583
    return-void

    .line 592
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettings()V

    .line 594
    return-void
.end method


# virtual methods
.method applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 419
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 420
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 423
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 425
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v3

    .line 426
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v4

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v5

    .line 425
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/DisplayRotation;->restoreSettings(III)V

    .line 428
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_32

    .line 429
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 431
    :cond_32
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_4b

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_4b

    .line 432
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v3

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 435
    :cond_4b
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    goto :goto_54

    :cond_53
    const/4 v3, 0x0

    :goto_54
    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 436
    return-void
.end method

.method getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 311
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 312
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 313
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-eqz v1, :cond_16

    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_16

    .line 321
    :cond_11
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    return v2

    .line 314
    :cond_16
    :goto_16
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 316
    const/4 v2, 0x2

    return v2

    .line 319
    :cond_1e
    const/4 v2, 0x1

    return v2
.end method

.method getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 297
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 298
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 299
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result v2

    return v2
.end method

.method setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "fixedToUserRotation"    # I

    .line 249
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 250
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 251
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 252
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 253
    return-void
.end method

.method setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "density"    # I
    .param p3, "userId"    # I

    .line 222
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1b

    .line 223
    if-nez p2, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "densityString":Ljava/lang/String;
    :goto_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    invoke-static {v1, v2, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 226
    return-void

    .line 229
    .end local v0    # "densityString":Ljava/lang/String;
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 230
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 231
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 232
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 233
    return-void
.end method

.method setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 236
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_12

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_scaling_force"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    return-void

    .line 242
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 243
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 244
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 245
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 246
    return-void
.end method

.method setForcedSize(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 207
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2e

    .line 208
    if-eqz p2, :cond_1e

    if-nez p3, :cond_9

    goto :goto_1e

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1e
    :goto_1e
    const-string v0, ""

    .line 209
    .local v0, "sizeString":Ljava/lang/String;
    :goto_20
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    return-void

    .line 214
    .end local v0    # "sizeString":Ljava/lang/String;
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 215
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 216
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 217
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I
    invoke-static {v1, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 218
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 219
    return-void
.end method

.method setRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 325
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 326
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 327
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 328
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 329
    return-void
.end method

.method setShouldShowImeLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"    # Z

    .line 407
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_10

    .line 408
    const-string v0, "WindowManager"

    const-string v1, "Default display should show IME"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 412
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 413
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 414
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 415
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 416
    return-void
.end method

.method setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"    # Z

    .line 373
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_10

    .line 374
    const-string v0, "WindowManager"

    const-string v1, "Default display should show system decors"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void

    .line 378
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 379
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 380
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 381
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 382
    return-void
.end method

.method setShouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"    # Z

    .line 341
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p2, :cond_10

    .line 342
    const-string v0, "WindowManager"

    const-string v1, "Public display can\'t be allowed to show content when locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 346
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 347
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 348
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 349
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 350
    return-void
.end method

.method setUserRotation(Lcom/android/server/wm/DisplayContent;II)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotationMode"    # I
    .param p3, "rotation"    # I

    .line 199
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 200
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 201
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 202
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I
    invoke-static {v1, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 203
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 204
    return-void
.end method

.method setWindowingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 303
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 304
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 305
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    # setter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 306
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 307
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 308
    return-void
.end method

.method shouldShowImeLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 385
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 387
    return v1

    .line 391
    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_REMOTE_APP_DISPLAY_MANAGEMENT:Z

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 394
    return v1

    .line 398
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 399
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 400
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-nez v1, :cond_1f

    .line 401
    const/4 v2, 0x0

    return v2

    .line 403
    :cond_1f
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 353
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    .line 355
    const/4 v0, 0x1

    return v0

    .line 359
    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_REMOTE_APP_DISPLAY_MANAGEMENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 360
    return v1

    .line 364
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 365
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v2

    .line 366
    .local v2, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-nez v2, :cond_1f

    .line 367
    return v1

    .line 369
    :cond_1f
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z
    invoke-static {v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v1

    return v1
.end method

.method shouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 332
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 333
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 334
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-nez v1, :cond_c

    .line 335
    const/4 v2, 0x0

    return v2

    .line 337
    :cond_c
    # getter for: Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 447
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 450
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 451
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
