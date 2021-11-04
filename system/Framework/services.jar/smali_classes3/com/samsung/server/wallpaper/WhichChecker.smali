.class public Lcom/samsung/server/wallpaper/WhichChecker;
.super Ljava/lang/Object;
.source "WhichChecker.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final EDIT_TYPE_CROP:I = 0x1

.field public static final EDIT_TYPE_ORIGINAL:I = 0x0

.field public static final FILE_TYPE_INFO:I = 0x2

.field public static final FILE_TYPE_LOCK:I = 0x1

.field public static final FILE_TYPE_SYSTEM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WhichChecker"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileName(III)Ljava/lang/String;
    .registers 6
    .param p0, "which"    # I
    .param p1, "fileType"    # I
    .param p2, "editType"    # I

    .line 96
    invoke-static {p0}, Lcom/samsung/server/wallpaper/WhichChecker;->isDex(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    .line 97
    if-ne p1, v1, :cond_d

    .line 98
    const-string v0, "wallpaper_desktop_info.xml"

    return-object v0

    .line 99
    :cond_d
    if-ne p1, v2, :cond_17

    .line 100
    if-ne p2, v2, :cond_14

    .line 101
    const-string v0, "wallpaper_desktop_lock"

    return-object v0

    .line 103
    :cond_14
    const-string v0, "wallpaper_desktop_lock_orig"

    return-object v0

    .line 106
    :cond_17
    if-ne p2, v2, :cond_1c

    .line 107
    const-string v0, "wallpaper_desktop"

    return-object v0

    .line 109
    :cond_1c
    const-string v0, "wallpaper_desktop_orig"

    return-object v0

    .line 112
    :cond_1f
    invoke-static {p0}, Lcom/samsung/server/wallpaper/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 113
    if-ne p1, v1, :cond_2a

    .line 114
    const-string v0, "wallpaper_subdisplay_info.xml"

    return-object v0

    .line 115
    :cond_2a
    if-ne p1, v2, :cond_34

    .line 116
    if-ne p2, v2, :cond_31

    .line 117
    const-string v0, "wallpaper_sub_display_lock"

    return-object v0

    .line 119
    :cond_31
    const-string v0, "wallpaper_sub_display_lock_orig"

    return-object v0

    .line 122
    :cond_34
    if-ne p2, v2, :cond_39

    .line 123
    const-string v0, "wallpaper_sub_display"

    return-object v0

    .line 125
    :cond_39
    const-string v0, "wallpaper_sub_display_orig"

    return-object v0

    .line 129
    :cond_3c
    if-ne p1, v1, :cond_41

    .line 130
    const-string v0, "wallpaper_info.xml"

    return-object v0

    .line 131
    :cond_41
    if-ne p1, v2, :cond_4b

    .line 132
    if-ne p2, v2, :cond_48

    .line 133
    const-string v0, "wallpaper_lock"

    return-object v0

    .line 135
    :cond_48
    const-string v0, "wallpaper_lock_orig"

    return-object v0

    .line 138
    :cond_4b
    if-ne p2, v2, :cond_50

    .line 139
    const-string v0, "wallpaper"

    return-object v0

    .line 141
    :cond_50
    const-string v0, "wallpaper_orig"

    return-object v0
.end method

.method public static getMode(I)I
    .registers 2
    .param p0, "which"    # I

    .line 49
    and-int/lit8 v0, p0, 0x1c

    return v0
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "which"    # I

    .line 45
    and-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static isDex(I)Z
    .registers 2
    .param p0, "which"    # I

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public static isLock(I)Z
    .registers 3
    .param p0, "which"    # I

    .line 89
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static isPhone(I)Z
    .registers 4
    .param p0, "which"    # I

    .line 60
    invoke-static {p0}, Lcom/samsung/server/wallpaper/WhichChecker;->getMode(I)I

    move-result v0

    .line 61
    .local v0, "mode":I
    if-eqz v0, :cond_e

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    goto :goto_e

    .line 64
    :cond_c
    const/4 v1, 0x0

    return v1

    .line 62
    :cond_e
    :goto_e
    const/4 v1, 0x1

    return v1
.end method

.method public static isSingleType(I)Z
    .registers 4
    .param p0, "which"    # I

    .line 53
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    and-int/lit8 v0, p0, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    .line 54
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_c
    return v1
.end method

.method public static isSubDisplay(I)Z
    .registers 3
    .param p0, "which"    # I

    .line 75
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_c

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    .line 76
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isSystem(I)Z
    .registers 3
    .param p0, "which"    # I

    .line 82
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 83
    return v1

    .line 85
    :cond_6
    const/4 v0, 0x0

    return v0
.end method
