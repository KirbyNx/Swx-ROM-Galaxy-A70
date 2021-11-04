.class Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# static fields
.field static final LAYER_PRIORITY_FOCUSED_WITHOUT_MODE:I = 0x1

.field static final LAYER_PRIORITY_FOCUSED_WITH_MODE:I = 0x0

.field static final LAYER_PRIORITY_NOT_FOCUSED_WITH_MODE:I = 0x2

.field static final LAYER_PRIORITY_UNSET:I = -0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

.field private mHighRefreshRateId:I

.field private final mHistoryLogMaxCount:I

.field private mLastRequestRefreshRateWindow:Lcom/android/server/wm/WindowState;

.field private final mLowRefreshRateId:I

.field private final mNonHighRefreshRatePackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshRateHistory:Lcom/android/server/wm/SystemHistory;

.field private mSupportsHighestResolutionHighRefreshRate:Z

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V
    .registers 7
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p3, "blacklist"    # Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "RefreshRatePolicy"

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLastRequestRefreshRateWindow:Lcom/android/server/wm/WindowState;

    .line 55
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHistoryLogMaxCount:I

    .line 61
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    .line 88
    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    .line 90
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v1, :cond_41

    .line 91
    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findHighRefreshRateModeId(Landroid/view/DisplayInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateId:I

    .line 92
    nop

    .line 93
    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->checkIfSupportsHighestResolutionHighRefreshRate(Landroid/view/DisplayInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mSupportsHighestResolutionHighRefreshRate:Z

    .line 95
    new-instance v1, Lcom/android/server/wm/SystemHistory;

    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->TAG:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/SystemHistory;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRateHistory:Lcom/android/server/wm/SystemHistory;

    .line 96
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SystemHistory;->enableLog(Z)V

    .line 99
    :cond_41
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    .line 100
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    return-void
.end method

.method private checkIfSupportsHighestResolutionHighRefreshRate(Landroid/view/DisplayInfo;)Z
    .registers 13
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "displayWidth":I
    const/4 v1, 0x0

    .line 147
    .local v1, "displayHeight":I
    const/4 v2, 0x0

    .line 148
    .local v2, "displayRefreshRate":F
    iget-object v3, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_8
    if-ge v6, v4, :cond_49

    aget-object v7, v3, v6

    .line 149
    .local v7, "mode":Landroid/view/Display$Mode;
    mul-int v8, v0, v1

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    mul-int/2addr v9, v10

    if-le v8, v9, :cond_1a

    .line 150
    goto :goto_46

    .line 152
    :cond_1a
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    const/high16 v9, 0x42700000    # 60.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_25

    .line 153
    goto :goto_46

    .line 156
    :cond_25
    mul-int v8, v0, v1

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    mul-int/2addr v9, v10

    if-lt v8, v9, :cond_3a

    .line 157
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    cmpl-float v8, v8, v2

    if-lez v8, :cond_46

    .line 158
    :cond_3a
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    .line 159
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    .line 160
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 148
    .end local v7    # "mode":Landroid/view/Display$Mode;
    :cond_46
    :goto_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 164
    :cond_49
    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_50

    const/4 v5, 0x1

    :cond_50
    return v5
.end method

.method private findHighRefreshRateModeId(Landroid/view/DisplayInfo;)I
    .registers 11
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 131
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 132
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    .line 133
    .local v1, "highRefreshRateModeId":I
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 134
    .local v2, "bestRefreshRate":F
    iget-object v3, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_2a

    aget-object v6, v3, v5

    .line 135
    .local v6, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    .line 136
    .local v7, "refreshRate":F
    const/high16 v8, 0x42700000    # 60.0f

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_27

    cmpl-float v8, v7, v2

    if-lez v8, :cond_27

    .line 137
    move v2, v7

    .line 138
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    .line 134
    .end local v6    # "mode":Landroid/view/Display$Mode;
    .end local v7    # "refreshRate":F
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 141
    :cond_2a
    return v1
.end method

.method private findLowRefreshRateModeId(Landroid/view/DisplayInfo;)I
    .registers 8
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 108
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 109
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 110
    .local v1, "refreshRates":[F
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 111
    .local v2, "bestRefreshRate":F
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_f
    if-ltz v3, :cond_24

    .line 112
    aget v4, v1, v3

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_21

    aget v4, v1, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_21

    .line 113
    aget v2, v1, v3

    .line 111
    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 116
    .end local v3    # "i":I
    :cond_24
    invoke-virtual {p1, v2}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result v3

    return v3
.end method


# virtual methods
.method addFixedRefreshRatePackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "displayModeId"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 174
    return-void
.end method

.method addNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 122
    return-void
.end method

.method calculatePriority(Lcom/android/server/wm/WindowState;)I
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 270
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    .line 271
    .local v0, "isFocused":Z
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v1

    .line 273
    .local v1, "preferredModeId":I
    if-nez v0, :cond_e

    if-lez v1, :cond_e

    .line 274
    const/4 v2, 0x2

    return v2

    .line 276
    :cond_e
    if-eqz v0, :cond_14

    if-nez v1, :cond_14

    .line 277
    const/4 v2, 0x1

    return v2

    .line 279
    :cond_14
    if-eqz v0, :cond_1a

    if-lez v1, :cond_1a

    .line 280
    const/4 v2, 0x0

    return v2

    .line 282
    :cond_1a
    const/4 v2, -0x1

    return v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 301
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RefreshRatePolicy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 303
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v0, "mLowRefreshRateId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 305
    const-string v0, " mHighRefreshRateId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 306
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v0, "mLastRequestRefreshRateWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLastRequestRefreshRateWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 309
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v0, "mNonHighRefreshRatePackages="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 312
    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 313
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "mFixedRefreshRatePackages="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    :cond_6b
    return-void
.end method

.method dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 319
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RefreshRatePolicy History"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRateHistory:Lcom/android/server/wm/SystemHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SystemHistory;->dump(Ljava/io/PrintWriter;)V

    .line 321
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 322
    return-void
.end method

.method getPolicyPreferredModeId(Lcom/android/server/wm/WindowState;)[I
    .registers 9
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 193
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_e

    .line 194
    new-array v0, v2, [I

    fill-array-data v0, :array_96

    return-object v0

    .line 197
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_25

    .line 201
    new-array v0, v2, [I

    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    aput v2, v0, v4

    aput v5, v0, v5

    return-object v0

    .line 206
    :cond_25
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_8a

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v3, :cond_35

    goto :goto_8a

    .line 211
    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 212
    new-array v0, v2, [I

    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v4

    aput v2, v0, v5

    return-object v0

    .line 217
    :cond_50
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY_BLOCK_LIST:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateList:Lcom/android/server/wm/BlockListManager;

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlockListManager;->isBlockListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 220
    new-array v0, v2, [I

    fill-array-data v0, :array_9e

    return-object v0

    .line 224
    :cond_68
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_LOW_REFRESH_RATE_LIST:Z

    if-eqz v0, :cond_84

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/android/server/wm/BlockListManager;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlockListManager;->isBlockListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 226
    new-array v0, v2, [I

    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    aput v2, v0, v4

    const/4 v2, 0x6

    aput v2, v0, v5

    return-object v0

    .line 230
    :cond_84
    new-array v0, v2, [I

    fill-array-data v0, :array_a6

    return-object v0

    .line 207
    :cond_8a
    :goto_8a
    new-array v2, v2, [I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    aput v3, v2, v4

    aput v0, v2, v5

    return-object v2

    nop

    :array_96
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9e
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 238
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 239
    return v1

    .line 243
    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_34

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v0, :cond_19

    goto :goto_34

    .line 247
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 251
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    .line 255
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/HighRefreshRateBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 256
    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateId:I

    return v1

    .line 258
    :cond_33
    return v1

    .line 244
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_34
    :goto_34
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    return v0
.end method

.method isSupportsHighestResolutionHighRefreshRate()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mSupportsHighestResolutionHighRefreshRate:Z

    return v0
.end method

.method removeFixedRefreshRatePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 179
    return-void
.end method

.method removeNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 127
    return-void
.end method

.method setLastRequestRefreshRateWindow(Lcom/android/server/wm/WindowState;II)V
    .registers 7
    .param p1, "requestRefreshRateWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "requestPreferredModeId"    # I
    .param p3, "requestRefreshRateReason"    # I

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLastRequestRefreshRateWindow:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_34

    .line 289
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLastRequestRefreshRateWindow:Lcom/android/server/wm/WindowState;

    .line 291
    if-eqz p1, :cond_34

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRateHistory:Lcom/android/server/wm/SystemHistory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested requestRefreshRateWindow, preferredModeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-static {p3}, Lcom/android/server/wm/DisplayPolicy;->refreshRateReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLastRequestRefreshRateWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SystemHistory;->add(Ljava/lang/String;)V

    .line 298
    :cond_34
    return-void
.end method
