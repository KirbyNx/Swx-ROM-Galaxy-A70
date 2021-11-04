.class final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field private static final DISPLAY_SPLITTER:Ljava/lang/String; = ";"

.field private static final FLAG_SPLITTER:Ljava/lang/String; = ","

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final MODE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MODE_SPLITTER:Ljava/lang/String; = "\\|"

.field private static final OVERLAY_DISPLAY_FLAG_OWN_CONTENT_ONLY:Ljava/lang/String; = "own_content_only"

.field private static final OVERLAY_DISPLAY_FLAG_SECURE:Ljava/lang/String; = "secure"

.field private static final OVERLAY_DISPLAY_FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:Ljava/lang/String; = "should_show_system_decorations"

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 131
    const-string v0, "([^,]+)(,[,_a-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    .line 132
    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .registers 12
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .line 145
    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .line 98
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .line 98
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static chooseOverlayGravity(I)I
    .registers 2
    .param p0, "overlayNumber"    # I

    .line 277
    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    .line 286
    const/16 v0, 0x53

    return v0

    .line 283
    :cond_c
    const/16 v0, 0x35

    return v0

    .line 281
    :cond_f
    const/16 v0, 0x55

    return v0

    .line 279
    :cond_12
    const/16 v0, 0x33

    return v0
.end method

.method private updateOverlayDisplayDevices()V
    .registers 3

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 183
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 184
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .registers 31

    .line 188
    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 191
    const-string v0, ""

    .line 195
    :cond_15
    const/4 v1, -0x1

    .line 196
    .local v1, "displayId":I
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_3e

    .line 197
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "tmpValues":[Ljava/lang/String;
    if-eqz v2, :cond_3e

    array-length v3, v2

    if-ne v3, v10, :cond_3e

    aget-object v3, v2, v12

    const-string v4, "dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 199
    aget-object v0, v2, v13

    .line 200
    aget-object v3, v2, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v14, v0

    move v15, v1

    goto :goto_40

    .line 205
    .end local v2    # "tmpValues":[Ljava/lang/String;
    :cond_3e
    move-object v14, v0

    move v15, v1

    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "displayId":I
    .local v14, "value":Ljava/lang/String;
    .local v15, "displayId":I
    :goto_40
    iget-object v0, v9, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 206
    return-void

    .line 208
    :cond_49
    iput-object v14, v9, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 210
    iget-object v0, v9, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v8, "OverlayDisplayAdapter"

    if-nez v0, :cond_75

    .line 211
    const-string v0, "Dismissing all overlay display devices."

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, v9, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 213
    .local v1, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    .line 214
    .end local v1    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    goto :goto_60

    .line 215
    :cond_70
    iget-object v0, v9, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    :cond_75
    const/4 v0, 0x0

    .line 219
    .local v0, "count":I
    const-string v1, ";"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v6, v7

    move v1, v0

    move v5, v12

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_7f
    if-ge v5, v6, :cond_276

    aget-object v4, v7, v5

    .line 220
    .local v4, "part":Ljava/lang/String;
    sget-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 221
    .local v3, "displayMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_241

    .line 222
    const/4 v0, 0x4

    if-lt v1, v0, :cond_a8

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many overlay display devices specified: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    goto/16 :goto_276

    .line 226
    :cond_a8
    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "modeString":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, "flagString":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    .line 229
    .local v17, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    const-string v0, "\\|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v10, v12

    const/4 v11, 0x0

    :goto_bf
    if-ge v11, v10, :cond_170

    aget-object v13, v12, v11

    .line 230
    .local v13, "mode":Ljava/lang/String;
    sget-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v21, v2

    .end local v2    # "modeString":Ljava/lang/String;
    .local v21, "modeString":Ljava/lang/String;
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 231
    .local v2, "modeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 233
    move-object/from16 v22, v3

    const/4 v3, 0x1

    .end local v3    # "displayMatcher":Ljava/util/regex/Matcher;
    .local v22, "displayMatcher":Ljava/util/regex/Matcher;
    :try_start_d4
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_d4 .. :try_end_de} :catch_145

    .line 234
    .local v0, "width":I
    move-object/from16 v20, v4

    const/4 v3, 0x2

    .end local v4    # "part":Ljava/lang/String;
    .local v20, "part":Ljava/lang/String;
    :try_start_e1
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xa

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_e1 .. :try_end_eb} :catch_13d

    .line 235
    .local v4, "height":I
    move/from16 v19, v5

    const/4 v3, 0x3

    :try_start_ee
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xa

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 236
    .local v3, "densityDpi":I
    const/16 v5, 0x64

    if-lt v0, v5, :cond_11d

    const/16 v5, 0x1000

    if-gt v0, v5, :cond_11d

    const/16 v5, 0x64

    if-lt v4, v5, :cond_11d

    const/16 v5, 0x1000

    if-gt v4, v5, :cond_11d

    const/16 v5, 0x78

    if-lt v3, v5, :cond_11d

    const/16 v5, 0x280

    if-gt v3, v5, :cond_11d

    .line 240
    new-instance v5, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    invoke-direct {v5, v0, v4, v3}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V
    :try_end_115
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_115} :catch_13b

    move/from16 v23, v10

    move-object/from16 v10, v17

    .end local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .local v10, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    :try_start_119
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    goto :goto_15f

    .line 236
    .end local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    :cond_11d
    move/from16 v23, v10

    move-object/from16 v10, v17

    .line 243
    .end local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "width":I
    .local v17, "width":I
    const-string v0, "Ignoring out-of-range overlay display mode: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catch Ljava/lang/NumberFormatException; {:try_start_119 .. :try_end_137} :catch_139

    .line 246
    nop

    .end local v3    # "densityDpi":I
    .end local v4    # "height":I
    .end local v17    # "width":I
    goto :goto_15f

    .line 245
    :catch_139
    move-exception v0

    goto :goto_14e

    .end local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .local v17, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    :catch_13b
    move-exception v0

    goto :goto_140

    :catch_13d
    move-exception v0

    move/from16 v19, v5

    :goto_140
    move/from16 v23, v10

    move-object/from16 v10, v17

    .end local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    goto :goto_14e

    .end local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v20    # "part":Ljava/lang/String;
    .local v4, "part":Ljava/lang/String;
    .restart local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    :catch_145
    move-exception v0

    move-object/from16 v20, v4

    move/from16 v19, v5

    move/from16 v23, v10

    move-object/from16 v10, v17

    .line 246
    .end local v4    # "part":Ljava/lang/String;
    .end local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v20    # "part":Ljava/lang/String;
    :goto_14e
    goto :goto_15f

    .line 247
    .end local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v20    # "part":Ljava/lang/String;
    .end local v22    # "displayMatcher":Ljava/util/regex/Matcher;
    .local v3, "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v4    # "part":Ljava/lang/String;
    .restart local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    :cond_14f
    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move/from16 v19, v5

    move/from16 v23, v10

    move-object/from16 v10, v17

    .end local v3    # "displayMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "part":Ljava/lang/String;
    .end local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v20    # "part":Ljava/lang/String;
    .restart local v22    # "displayMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 229
    .end local v2    # "modeMatcher":Ljava/util/regex/Matcher;
    .end local v13    # "mode":Ljava/lang/String;
    :cond_15f
    :goto_15f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v17, v10

    move/from16 v5, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v10, v23

    const/4 v13, 0x1

    goto/16 :goto_bf

    .line 251
    .end local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v20    # "part":Ljava/lang/String;
    .end local v21    # "modeString":Ljava/lang/String;
    .end local v22    # "displayMatcher":Ljava/util/regex/Matcher;
    .local v2, "modeString":Ljava/lang/String;
    .restart local v3    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v4    # "part":Ljava/lang/String;
    .restart local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    :cond_170
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move/from16 v19, v5

    move-object/from16 v10, v17

    .end local v2    # "modeString":Ljava/lang/String;
    .end local v3    # "displayMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "part":Ljava/lang/String;
    .end local v17    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v20    # "part":Ljava/lang/String;
    .restart local v21    # "modeString":Ljava/lang/String;
    .restart local v22    # "displayMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_232

    .line 252
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .local v0, "count":I
    move v11, v0

    .line 253
    .local v11, "number":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403ca

    const/4 v12, 0x1

    new-array v3, v12, [Ljava/lang/Object;

    .line 255
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v3, v13

    .line 253
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "name":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/display/OverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v17

    .line 257
    .local v17, "gravity":I
    invoke-static/range {v16 .. v16}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->parseFlags(Ljava/lang/String;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    move-result-object v4

    .line 259
    .local v4, "flags":Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing overlay display device #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v10}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v1, :cond_206

    .line 264
    iget-object v3, v9, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v1, v2

    move-object v12, v2

    move-object/from16 v18, v21

    .end local v21    # "modeString":Ljava/lang/String;
    .local v18, "modeString":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object v13, v3

    move-object/from16 v21, v22

    const/16 v23, 0x3

    const/16 v24, 0x2

    .end local v22    # "displayMatcher":Ljava/util/regex/Matcher;
    .local v21, "displayMatcher":Ljava/util/regex/Matcher;
    move-object v3, v5

    move-object/from16 v25, v4

    .end local v4    # "flags":Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .local v25, "flags":Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    move-object v4, v10

    move-object/from16 v26, v5

    .end local v5    # "name":Ljava/lang/String;
    .local v26, "name":Ljava/lang/String;
    move/from16 v5, v17

    move/from16 v27, v6

    move-object/from16 v6, v25

    move-object/from16 v28, v7

    move v7, v11

    move-object/from16 v29, v8

    move v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;ILcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;II)V

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22e

    .line 267
    .end local v18    # "modeString":Ljava/lang/String;
    .end local v25    # "flags":Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .end local v26    # "name":Ljava/lang/String;
    .restart local v4    # "flags":Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .restart local v5    # "name":Ljava/lang/String;
    .local v21, "modeString":Ljava/lang/String;
    .restart local v22    # "displayMatcher":Ljava/util/regex/Matcher;
    :cond_206
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v18, v21

    move-object/from16 v21, v22

    const/16 v23, 0x3

    const/16 v24, 0x2

    .end local v4    # "flags":Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .end local v5    # "name":Ljava/lang/String;
    .end local v22    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v18    # "modeString":Ljava/lang/String;
    .local v21, "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v25    # "flags":Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .restart local v26    # "name":Ljava/lang/String;
    iget-object v8, v9, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, v26

    move-object v4, v10

    move/from16 v5, v17

    move-object/from16 v6, v25

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;ILcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    nop

    .line 219
    .end local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v11    # "number":I
    .end local v16    # "flagString":Ljava/lang/String;
    .end local v17    # "gravity":I
    .end local v18    # "modeString":Ljava/lang/String;
    .end local v20    # "part":Ljava/lang/String;
    .end local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    .end local v25    # "flags":Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .end local v26    # "name":Ljava/lang/String;
    :goto_22e
    move v1, v0

    move-object/from16 v2, v29

    goto :goto_267

    .line 251
    .end local v0    # "count":I
    .restart local v1    # "count":I
    .restart local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v16    # "flagString":Ljava/lang/String;
    .restart local v20    # "part":Ljava/lang/String;
    .local v21, "modeString":Ljava/lang/String;
    .restart local v22    # "displayMatcher":Ljava/util/regex/Matcher;
    :cond_232
    move/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v18, v21

    move-object/from16 v21, v22

    const/16 v23, 0x3

    const/16 v24, 0x2

    .end local v22    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v18    # "modeString":Ljava/lang/String;
    .local v21, "displayMatcher":Ljava/util/regex/Matcher;
    goto :goto_251

    .line 221
    .end local v10    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v16    # "flagString":Ljava/lang/String;
    .end local v18    # "modeString":Ljava/lang/String;
    .end local v20    # "part":Ljava/lang/String;
    .end local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v3    # "displayMatcher":Ljava/util/regex/Matcher;
    .local v4, "part":Ljava/lang/String;
    :cond_241
    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v19, v5

    move/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move/from16 v23, v10

    move/from16 v24, v11

    .line 272
    .end local v3    # "displayMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "part":Ljava/lang/String;
    .restart local v20    # "part":Ljava/lang/String;
    .restart local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    :goto_251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed overlay display devices setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v29

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v20    # "part":Ljava/lang/String;
    .end local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    :goto_267
    add-int/lit8 v5, v19, 0x1

    move-object v8, v2

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v6, v27

    move-object/from16 v7, v28

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_7f

    .line 274
    :cond_276
    :goto_276
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 151
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOverlaySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverlays: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 156
    .local v1, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 157
    .end local v1    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    goto :goto_3b

    .line 158
    :cond_4b
    return-void
.end method

.method public registerLocked()V
    .registers 3

    .line 162
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method
