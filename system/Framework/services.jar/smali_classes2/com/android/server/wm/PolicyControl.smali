.class Lcom/android/server/wm/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PolicyControl$Filter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static final TAG:Ljava/lang/String; = "PolicyControl"

.field private static sDexForceImmersiveModeEnabled:Z

.field private static sDexForceImmersiveModeSettingsOn:Z

.field private static sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field private static sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;

.field private static sVrImmersiveMode:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I
    .registers 4
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "clearableFlags"    # I

    .line 231
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 232
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_8
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 233
    and-int/lit8 p1, p1, -0x5

    .line 243
    :cond_14
    return p1
.end method

.method static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 247
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_a

    .line 248
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 249
    :cond_a
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 247
    :goto_13
    return v0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/android/server/wm/PolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 291
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 292
    if-nez p1, :cond_19

    .line 293
    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    .line 295
    :cond_19
    invoke-virtual {p1, p3}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 297
    :goto_1f
    return-void
.end method

.method static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 285
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string/jumbo v1, "sImmersiveStatusFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 286
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string/jumbo v1, "sImmersiveNavigationFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 287
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string/jumbo v1, "sImmersivePreconfirmationsFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 288
    return-void
.end method

.method static getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 155
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_8
    move-object p1, v0

    .line 156
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v0

    goto :goto_15

    .line 157
    :cond_10
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    :goto_15
    nop

    .line 158
    .local v0, "vis":I
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_2e

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 159
    or-int/lit16 v0, v0, 0x1004

    .line 161
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 162
    or-int/lit16 v0, v0, 0x400

    .line 164
    :cond_2a
    const v1, -0x40000101    # -1.9999694f

    and-int/2addr v0, v1

    .line 167
    :cond_2e
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_46

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 168
    or-int/lit16 v0, v0, 0x1002

    .line 170
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 171
    or-int/lit16 v0, v0, 0x200

    .line 173
    :cond_42
    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    .line 200
    :cond_46
    return v0
.end method

.method static getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 204
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_8
    move-object p1, v0

    .line 205
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 206
    .local v0, "flags":I
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 207
    or-int/lit16 v0, v0, 0x400

    .line 208
    const v1, -0x4000801

    and-int/2addr v0, v1

    .line 211
    :cond_1b
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_29

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 212
    const v1, -0x8000001

    and-int/2addr v0, v1

    .line 227
    :cond_29
    return v0
.end method

.method static isDexForceImmersiveModeEnabled()Z
    .registers 1

    .line 146
    sget-boolean v0, Lcom/android/server/wm/PolicyControl;->sDexForceImmersiveModeEnabled:Z

    return v0
.end method

.method static isDexForceImmersiveModeSettingsOn()Z
    .registers 1

    .line 150
    sget-boolean v0, Lcom/android/server/wm/PolicyControl;->sDexForceImmersiveModeSettingsOn:Z

    return v0
.end method

.method public static isVrImmersiveMode()Z
    .registers 1

    .line 261
    sget-boolean v0, Lcom/android/server/wm/PolicyControl;->sVrImmersiveMode:Z

    return v0
.end method

.method static reloadFromSetting(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "policy_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 272
    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eq v2, v0, :cond_28

    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_28

    .line 275
    :cond_20
    invoke-static {v0}, Lcom/android/server/wm/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 276
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_29

    .line 280
    nop

    .line 281
    const/4 v1, 0x1

    return v1

    .line 273
    :cond_28
    :goto_28
    return v1

    .line 277
    :catchall_29
    move-exception v2

    .line 278
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PolicyControl"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    return v1
.end method

.method static setDexForceImmersiveModeEnabled(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 138
    sput-boolean p0, Lcom/android/server/wm/PolicyControl;->sDexForceImmersiveModeEnabled:Z

    .line 139
    return-void
.end method

.method static setDexForceImmersiveModeSettingsOn(Z)V
    .registers 1
    .param p0, "settingsValue"    # Z

    .line 142
    sput-boolean p0, Lcom/android/server/wm/PolicyControl;->sDexForceImmersiveModeSettingsOn:Z

    .line 143
    return-void
.end method

.method static setFilters(Ljava/lang/String;)V
    .registers 11
    .param p0, "value"    # Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 303
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 304
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 305
    if-eqz p0, :cond_7c

    .line 306
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "nvps":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_7c

    aget-object v4, v0, v3

    .line 308
    .local v4, "nvp":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 309
    .local v5, "i":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_20

    goto :goto_79

    .line 310
    :cond_20
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "n":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, "v":Ljava/lang/String;
    const-string/jumbo v8, "immersive.full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 313
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 314
    .local v8, "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 315
    sget-object v9, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v9, :cond_41

    .line 316
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 318
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_41
    goto :goto_79

    :cond_42
    const-string/jumbo v8, "immersive.status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 319
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 320
    .restart local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 321
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    goto :goto_79

    :cond_52
    const-string/jumbo v8, "immersive.navigation"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 322
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 323
    .restart local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 324
    sget-object v9, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v9, :cond_78

    .line 325
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_78

    .line 327
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_68
    const-string/jumbo v8, "immersive.preconfirms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 328
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 329
    .restart local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_79

    .line 327
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_78
    :goto_78
    nop

    .line 307
    .end local v4    # "nvp":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    :goto_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 338
    .end local v0    # "nvps":[Ljava/lang/String;
    :cond_7c
    return-void
.end method

.method public static setVrImmersiveMode(Z)V
    .registers 3
    .param p0, "vrImmersiveMode"    # Z

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVrImmersiveMode vrImmersiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PolicyControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sput-boolean p0, Lcom/android/server/wm/PolicyControl;->sVrImmersiveMode:Z

    .line 258
    return-void
.end method

.method static shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 100
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 102
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_IMMERSIVE_MODE_ENABLED:Z

    const/4 v3, 0x1

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVIBAR_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v2, :cond_35

    :cond_11
    if-eqz v1, :cond_35

    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_35

    .line 106
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 108
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_33
    goto :goto_35

    .line 112
    :cond_34
    return v3

    .line 126
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_35
    :goto_35
    sget-object v2, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v2, :cond_43

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 127
    invoke-virtual {v2, v4}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_43

    move v0, v3

    goto :goto_44

    :cond_43
    nop

    .line 126
    :goto_44
    return v0
.end method

.method static shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 74
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 75
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 76
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_IMMERSIVE_MODE_ENABLED:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-eqz v1, :cond_31

    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_31

    .line 79
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 81
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_2f
    goto :goto_31

    .line 85
    :cond_30
    return v3

    .line 95
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_31
    :goto_31
    sget-object v2, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v2, :cond_3f

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 96
    invoke-virtual {v2, v4}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move v0, v3

    goto :goto_40

    :cond_3f
    nop

    .line 95
    :goto_40
    return v0
.end method
