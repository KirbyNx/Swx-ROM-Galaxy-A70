.class Lcom/android/server/pm/UserSystemPackageInstaller;
.super Ljava/lang/Object;
.source "UserSystemPackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserSystemPackageInstaller$PackageWhitelistMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final PACKAGE_WHITELIST_MODE_PROP:Ljava/lang/String; = "persist.debug.user.package_whitelist_mode"

.field private static final TAG:Ljava/lang/String; = "UserManagerService"

.field static final USER_TYPE_PACKAGE_WHITELIST_MODE_DEVICE_DEFAULT:I = -0x1

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_DISABLE:I = 0x0

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_ENFORCE:I = 0x1

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IGNORE_OTA:I = 0x10

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IMPLICIT_WHITELIST:I = 0x4

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_IMPLICIT_WHITELIST_SYSTEM:I = 0x8

.field public static final USER_TYPE_PACKAGE_WHITELIST_MODE_LOG:I = 0x2

.field static final USER_TYPE_PACKAGE_WHITELIST_MODE_NONE:I = -0x3e8


# instance fields
.field private final mUm:Lcom/android/server/pm/UserManagerService;

.field private final mUserTypes:[Ljava/lang/String;

.field private final mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V
    .registers 7
    .param p1, "um"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p2, "userTypes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/UserTypeDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 167
    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 168
    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_1c

    .line 175
    nop

    .line 176
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 177
    return-void

    .line 169
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " user types. However, UserSystemPackageInstaller does not work if there are more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user types."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;[Ljava/lang/String;)V
    .registers 4
    .param p1, "ums"    # Lcom/android/server/pm/UserManagerService;
    .param p3, "sortedUserTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 182
    .local p2, "whitelist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 184
    iput-object p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 186
    return-void
.end method

.method private checkWhitelistedSystemPackages(I)V
    .registers 10
    .param p1, "mode"    # I

    .line 275
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 276
    return-void

    .line 278
    :cond_d
    const-string v0, "UserManagerService"

    const-string v1, "Checking that all system packages are whitelisted."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 283
    .local v2, "numberWarnings":I
    const-string v3, ") has "

    const-string v4, "checkWhitelistedSystemPackages(mode="

    if-nez v2, :cond_3e

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") has no warnings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 287
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " warnings:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_60
    if-ge v5, v2, :cond_6e

    .line 290
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 295
    .end local v5    # "i":I
    :cond_6e
    :goto_6e
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 296
    return-void

    .line 299
    :cond_7b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    move-result-object v5

    .line 300
    .local v5, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 302
    .local v6, "numberErrors":I
    if-nez v6, :cond_a1

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") has no errors"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 307
    :cond_a1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errors:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 311
    .local v3, "doWtf":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c9
    if-ge v4, v6, :cond_dd

    .line 312
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 313
    .local v7, "msg":Ljava/lang/String;
    if-eqz v3, :cond_d7

    .line 314
    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 316
    :cond_d7
    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v7    # "msg":Ljava/lang/String;
    :goto_da
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    .line 319
    .end local v4    # "i":I
    :cond_dd
    return-void
.end method

.method private dumpIndented(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 14
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 733
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    .line 734
    .local v0, "mode":I
    const-string v1, "Whitelisted packages per user type"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 737
    const-string v1, "Mode: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 739
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1f

    const-string v1, " (enforced)"

    goto :goto_20

    :cond_1f
    move-object v1, v2

    :goto_20
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 740
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, " (logged)"

    goto :goto_2d

    :cond_2c
    move-object v1, v2

    :goto_2d
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 741
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, " (implicit)"

    goto :goto_3a

    :cond_39
    move-object v1, v2

    :goto_3a
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 742
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v2, " (ignore OTAs)"

    :cond_45
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 744
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 746
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 747
    const-string v1, "Legend"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 749
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_5a
    iget-object v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7d

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 752
    .end local v1    # "idx":I
    :cond_7d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 754
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 755
    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 756
    .local v1, "size":I
    if-nez v1, :cond_97

    .line 757
    const-string v2, "No packages"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 759
    return-void

    .line 761
    :cond_97
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, " packages:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 763
    const/4 v2, 0x0

    .local v2, "pkgIdx":I
    :goto_a3
    const/4 v3, 0x1

    if-ge v2, v1, :cond_e3

    .line 764
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 765
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 766
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 767
    .local v5, "userTypesBitSet":J
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_c3
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_dd

    .line 768
    shl-int v8, v3, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_da

    .line 769
    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v8, " "

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 767
    :cond_da
    add-int/lit8 v7, v7, 0x1

    goto :goto_c3

    .line 772
    .end local v7    # "idx":I
    :cond_dd
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 763
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "userTypesBitSet":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 774
    .end local v2    # "pkgIdx":I
    :cond_e3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 776
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 777
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v3, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Lcom/android/internal/util/IndentingPrintWriter;IZZ)V

    .line 778
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 779
    return-void
.end method

.method private static getAndSortKeysFromMap(Landroid/util/ArrayMap;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 718
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 719
    .local v0, "userTypeList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 720
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 722
    .end local v1    # "i":I
    :cond_18
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 723
    return-object v0
.end method

.method private getBaseTypeBitSets()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 664
    const-wide/16 v0, 0x0

    .line 665
    .local v0, "typesBitSetFull":J
    const-wide/16 v2, 0x0

    .line 666
    .local v2, "typesBitSetSystem":J
    const-wide/16 v4, 0x0

    .line 667
    .local v4, "typesBitSetProfile":J
    const/4 v6, 0x0

    .local v6, "idx":I
    :goto_7
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_3e

    .line 668
    iget-object v8, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfFull(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1b

    .line 669
    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v0, v9

    .line 671
    :cond_1b
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 672
    shl-int v7, v8, v6

    int-to-long v9, v7

    or-long/2addr v2, v9

    .line 674
    :cond_2b
    iget-object v7, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    iget-object v9, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v7, v9}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfProfile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 675
    shl-int v7, v8, v6

    int-to-long v7, v7

    or-long/2addr v4, v7

    .line 667
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 679
    .end local v6    # "idx":I
    :cond_3e
    new-instance v6, Landroid/util/ArrayMap;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 680
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "FULL"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "SYSTEM"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "PROFILE"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    return-object v6
.end method

.method private getDeviceDefaultWhitelistMode()I
    .registers 3

    .line 470
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 471
    const v1, 0x10e00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 470
    return v0
.end method

.method private getInstallablePackagesForUserId(I)Ljava/util/Set;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getPackagesWhitelistErrors(I)Ljava/util/List;
    .registers 7
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c
    invoke-static {p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 353
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 356
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedSystemPackages()Ljava/util/Set;

    move-result-object v1

    .line 358
    .local v1, "allWhitelistedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 361
    .local v2, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "System package %s is not whitelisted using \'install-in-user-type\' in SystemConfig for any user types!"

    .line 363
    .local v3, "logMessageFmt":Ljava/lang/String;
    new-instance v4, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;-><init>(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 372
    return-object v0
.end method

.method private getPackagesWhitelistWarnings()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedSystemPackages()Ljava/util/Set;

    move-result-object v0

    .line 327
    .local v0, "allWhitelistedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v1, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 331
    .local v2, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "%s is whitelisted but not present."

    .line 332
    .local v3, "notPresentFmt":Ljava/lang/String;
    const-string v4, "%s is whitelisted and present but not a system package."

    .line 333
    .local v4, "notSystemFmt":Ljava/lang/String;
    const-string v5, "%s is whitelisted but it\'s auto-generated RRO package."

    .line 334
    .local v5, "overlayPackageFmt":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 335
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    .line 336
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_3d

    .line 337
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    const-string v9, "%s is whitelisted but not present."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 338
    :cond_3d
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v11

    if-nez v11, :cond_51

    .line 339
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    const-string v9, "%s is whitelisted and present but not a system package."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 340
    :cond_51
    invoke-static {v8}, Lcom/android/server/pm/UserSystemPackageInstaller;->isAutoGeneratedRRO(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    if-eqz v11, :cond_64

    .line 341
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    const-string v9, "%s is whitelisted but it\'s auto-generated RRO package."

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_64
    :goto_64
    goto :goto_1b

    .line 344
    :cond_65
    return-object v1
.end method

.method private getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 697
    .local p1, "userTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p2, "baseTypeBitSets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 698
    .local v0, "resultBitSet":J
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 700
    .local v3, "type":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 701
    .local v4, "baseTypeBitSet":Ljava/lang/Long;
    if-eqz v4, :cond_20

    .line 702
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    or-long/2addr v0, v5

    .line 703
    goto :goto_6

    .line 706
    :cond_20
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v5

    .line 707
    .local v5, "userTypeBitSet":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2c

    .line 708
    or-long/2addr v0, v5

    .line 709
    goto :goto_6

    .line 711
    :cond_2c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemConfig contained an invalid user type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UserManagerService"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "baseTypeBitSet":Ljava/lang/Long;
    .end local v5    # "userTypeBitSet":J
    goto :goto_6

    .line 713
    :cond_43
    return-wide v0
.end method

.method private getWhitelistMode()I
    .registers 3

    .line 460
    const-string/jumbo v0, "persist.debug.user.package_whitelist_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 462
    .local v0, "runtimeMode":I
    if-eq v0, v1, :cond_b

    .line 463
    return v0

    .line 465
    :cond_b
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultWhitelistMode()I

    move-result v1

    return v1
.end method

.method private getWhitelistedSystemPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static hasAutoGeneratedRROSuffix(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 421
    const-string v0, ".auto_generated_rro_product__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 422
    const-string v0, ".auto_generated_rro_vendor__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 421
    :goto_14
    return v0
.end method

.method private static isAutoGeneratedRRO(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 429
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 430
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->hasAutoGeneratedRROSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 429
    :goto_13
    return v0
.end method

.method private static isEnforceMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 435
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isIgnoreOtaMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 440
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isImplicitWhitelistMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 450
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isImplicitWhitelistSystemMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 455
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isLogMode(I)Z
    .registers 2
    .param p0, "whitelistMode"    # I

    .line 445
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$getPackagesWhitelistErrors$1(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7
    .param p0, "allWhitelistedPackages"    # Ljava/util/Set;
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "errors"    # Ljava/util/List;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 364
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 365
    :cond_7
    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 367
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->isAutoGeneratedRRO(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 368
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "System package %s is not whitelisted using \'install-in-user-type\' in SystemConfig for any user types!"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_2a
    return-void
.end method

.method static synthetic lambda$installWhitelistedSystemPackages$0(Ljava/util/Set;IZZLandroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;)V
    .registers 16
    .param p0, "userWhitelist"    # Ljava/util/Set;
    .param p1, "userId"    # I
    .param p2, "isFirstBoot"    # Z
    .param p3, "isConsideredUpgrade"    # Z
    .param p4, "preExistingPackages"    # Landroid/util/ArraySet;
    .param p5, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 219
    iget-object v0, p5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 220
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v0, :cond_6f

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_6f

    .line 223
    :cond_c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1a

    .line 224
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 225
    :cond_1a
    invoke-virtual {p5}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v3

    if-nez v3, :cond_26

    move v3, v1

    goto :goto_27

    :cond_26
    move v3, v2

    .line 226
    .local v3, "install":Z
    :goto_27
    invoke-virtual {p5, p1}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eq v4, v3, :cond_6e

    .line 227
    move-object v4, p5

    move v5, v3

    move v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldChangeInstallationState(Lcom/android/server/pm/PackageSetting;ZIZZLandroid/util/ArraySet;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto :goto_6e

    .line 231
    :cond_3a
    invoke-virtual {p5, v3, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 232
    nop

    .line 233
    if-eqz v3, :cond_42

    move v1, v2

    goto :goto_43

    .line 234
    :cond_42
    nop

    .line 232
    :goto_43
    invoke-virtual {p5, v1, p1}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_50

    const-string v2, "Installed "

    goto :goto_52

    :cond_50
    const-string v2, "Uninstalled "

    :goto_52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    const-string v2, "UserManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 229
    :cond_6e
    :goto_6e
    return-void

    .line 221
    .end local v3    # "install":Z
    :cond_6f
    :goto_6f
    return-void
.end method

.method static modeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 476
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_13

    const/4 v0, -0x1

    if-eq p0, v0, :cond_10

    .line 482
    const-class v0, Lcom/android/server/pm/UserSystemPackageInstaller;

    const-string v1, "USER_TYPE_PACKAGE_WHITELIST_MODE_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 478
    :cond_10
    const-string v0, "DEVICE_DEFAULT"

    return-object v0

    .line 480
    :cond_13
    const-string v0, "NONE"

    return-object v0
.end method

.method private static shouldChangeInstallationState(Lcom/android/server/pm/PackageSetting;ZIZZLandroid/util/ArraySet;)Z
    .registers 9
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "install"    # Z
    .param p2, "userId"    # I
    .param p3, "isFirstBoot"    # Z
    .param p4, "isUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "ZIZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 260
    .local p5, "preOtaPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    .line 262
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->getUninstallReason(I)I

    move-result v2

    if-ne v2, v1, :cond_b

    move v0, v1

    :cond_b
    return v0

    .line 266
    :cond_c
    if-nez p3, :cond_18

    if-eqz p4, :cond_19

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    move v0, v1

    :cond_19
    return v0
.end method

.method static shouldInstallPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z
    .registers 6
    .param p0, "sysPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "implicitlyWhitelist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 545
    .local p1, "userTypeWhitelist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p2, "userWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isAutoGeneratedRRO(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 546
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    goto :goto_f

    .line 553
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_b
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 556
    .restart local v0    # "pkgName":Ljava/lang/String;
    :goto_f
    if-eqz p3, :cond_17

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 557
    :cond_17
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1d
    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 556
    :goto_20
    return v1
.end method

.method private static showIssues(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V
    .registers 7
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "verbose"    # Z
    .param p3, "issueType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 806
    .local p2, "issues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 807
    .local v0, "size":I
    if-nez v0, :cond_11

    .line 808
    if-eqz p1, :cond_10

    .line 809
    const-string v1, "No "

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 811
    :cond_10
    return-void

    .line 813
    :cond_11
    if-eqz p1, :cond_21

    .line 814
    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 817
    :cond_21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v0, :cond_30

    .line 818
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 820
    .end local v1    # "i":I
    :cond_30
    if-eqz p1, :cond_35

    .line 821
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 823
    :cond_35
    return-void
.end method


# virtual methods
.method determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;
    .registers 18
    .param p1, "sysConfig"    # Lcom/android/server/SystemConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 612
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getBaseTypeBitSets()Ljava/util/Map;

    move-result-object v1

    .line 614
    .local v1, "baseTypeBitSets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    nop

    .line 615
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeWhitelist()Landroid/util/ArrayMap;

    move-result-object v2

    .line 617
    .local v2, "whitelist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 619
    .local v3, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_41

    .line 620
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v8

    .line 622
    .local v8, "typesBitSet":J
    cmp-long v6, v8, v6

    if-eqz v6, :cond_3e

    .line 623
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v8    # "typesBitSet":J
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 627
    .end local v4    # "i":I
    :cond_41
    nop

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemConfig;->getAndClearPackageToUserTypeBlacklist()Landroid/util/ArrayMap;

    move-result-object v4

    .line 629
    .local v4, "blacklist":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_47
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_85

    .line 630
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 631
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    move-result-wide v9

    .line 632
    .local v9, "nonTypesBitSet":J
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 633
    .local v11, "typesBitSet":Ljava/lang/Long;
    if-eqz v11, :cond_77

    .line 634
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    not-long v14, v9

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 635
    :cond_77
    cmp-long v12, v9, v6

    if-eqz v12, :cond_82

    .line 637
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "nonTypesBitSet":J
    .end local v11    # "typesBitSet":Ljava/lang/Long;
    :cond_82
    :goto_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 641
    .end local v5    # "i":I
    :cond_85
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    return-object v3
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 727
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 728
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpIndented(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 729
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 730
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    return-void

    .line 727
    .restart local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_e
    move-exception v1

    :try_start_f
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v1
.end method

.method dumpPackageWhitelistProblems(Lcom/android/internal/util/IndentingPrintWriter;IZZ)V
    .registers 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "mode"    # I
    .param p3, "verbose"    # Z
    .param p4, "criticalOnly"    # Z

    .line 784
    const/16 v0, -0x3e8

    if-ne p2, v0, :cond_9

    .line 785
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result p2

    goto :goto_10

    .line 786
    :cond_9
    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 787
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getDeviceDefaultWhitelistMode()I

    move-result p2

    .line 789
    :cond_10
    :goto_10
    if-eqz p4, :cond_14

    .line 791
    and-int/lit8 p2, p2, -0x3

    .line 793
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpPackageWhitelistProblems(): using mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    move-result-object v0

    .line 796
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "errors"

    invoke-static {p1, p3, v0, v1}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    .line 798
    if-eqz p4, :cond_3a

    return-void

    .line 800
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    move-result-object v1

    .line 801
    .local v1, "warnings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "warnings"

    invoke-static {p1, p3, v1, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 503
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    .line 504
    .local v0, "mode":I
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 505
    const/4 v1, 0x0

    return-object v1

    .line 507
    :cond_c
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 508
    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistSystemMode(I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeSubtypeOfSystem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v1, 0x1

    .line 509
    .local v1, "implicitlyWhitelist":Z
    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 511
    .local v2, "whitelistedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 512
    .local v3, "installPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 513
    .local v4, "pmInt":Landroid/content/pm/PackageManagerInternal;
    new-instance v5, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;

    invoke-direct {v5, p0, v2, v1, v3}, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;-><init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;)V

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 523
    return-object v3
.end method

.method getUserTypeMask(Ljava/lang/String;)J
    .registers 5
    .param p1, "userType"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 652
    .local v0, "userTypeIndex":I
    if-ltz v0, :cond_c

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v1, v1

    goto :goto_e

    :cond_c
    const-wide/16 v1, 0x0

    .line 653
    .local v1, "userTypeMask":J
    :goto_e
    return-wide v1
.end method

.method getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .registers 13
    .param p1, "userType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    move-result-wide v0

    .line 567
    .local v0, "userTypeMask":J
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 568
    .local v2, "installablePkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 569
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 570
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 571
    .local v5, "whitelistedUserTypes":J
    and-long v7, v0, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_37

    .line 572
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "whitelistedUserTypes":J
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 575
    .end local v3    # "i":I
    :cond_3a
    return-object v2
.end method

.method installWhitelistedSystemPackages(ZZLandroid/util/ArraySet;)Z
    .registers 20
    .param p1, "isFirstBoot"    # Z
    .param p2, "isUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 201
    .local p3, "preExistingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v7

    .line 202
    .local v7, "mode":I
    invoke-direct {v0, v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->checkWhitelistedSystemPackages(I)V

    .line 203
    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-static {v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    move v9, v2

    .line 204
    .local v9, "isConsideredUpgrade":Z
    if-nez v9, :cond_1b

    if-nez p1, :cond_1b

    .line 205
    return v1

    .line 207
    :cond_1b
    if-eqz p1, :cond_24

    invoke-static {v7}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 210
    return v1

    .line 212
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reviewing whitelisted packages due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v3, ""

    if-eqz p1, :cond_35

    const-string v4, "[firstBoot]"

    goto :goto_36

    :cond_35
    move-object v4, v3

    :goto_36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_3d

    const-string v3, "[upgrade]"

    :cond_3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    const-string v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    .line 216
    .local v10, "pmInt":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v11

    array-length v12, v11

    move v13, v1

    :goto_5a
    if-ge v13, v12, :cond_76

    aget v14, v11, v13

    .line 217
    .local v14, "userId":I
    invoke-direct {v0, v14}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserId(I)Ljava/util/Set;

    move-result-object v15

    .line 218
    .local v15, "userWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;

    move-object v1, v6

    move-object v2, v15

    move v3, v14

    move/from16 v4, p1

    move v5, v9

    move-object v8, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;-><init>(Ljava/util/Set;IZZLandroid/util/ArraySet;)V

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManagerInternal;->forEachPackageSetting(Ljava/util/function/Consumer;)V

    .line 216
    .end local v14    # "userId":I
    .end local v15    # "userWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v13, v13, 0x1

    goto :goto_5a

    .line 240
    :cond_76
    const/4 v1, 0x1

    return v1
.end method

.method isEnforceMode()Z
    .registers 2

    .line 377
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isEnforceMode(I)Z

    move-result v0

    return v0
.end method

.method isIgnoreOtaMode()Z
    .registers 2

    .line 390
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isIgnoreOtaMode(I)Z

    move-result v0

    return v0
.end method

.method isImplicitWhitelistMode()Z
    .registers 2

    .line 405
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistMode(I)Z

    move-result v0

    return v0
.end method

.method isImplicitWhitelistSystemMode()Z
    .registers 2

    .line 413
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isImplicitWhitelistSystemMode(I)Z

    move-result v0

    return v0
.end method

.method isLogMode()Z
    .registers 2

    .line 397
    invoke-direct {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->isLogMode(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getInstallablePackagesForUserType$2$UserSystemPackageInstaller(Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6
    .param p1, "whitelistedPackages"    # Ljava/util/Set;
    .param p2, "implicitlyWhitelist"    # Z
    .param p3, "installPackages"    # Ljava/util/Set;
    .param p4, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 514
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_7

    .line 515
    return-void

    .line 517
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-static {p4, v0, p1, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldInstallPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 520
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_16
    return-void
.end method
