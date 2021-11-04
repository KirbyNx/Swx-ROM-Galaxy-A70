.class public Lcom/android/server/am/mars/database/FASEntity;
.super Ljava/lang/Object;
.source "FASEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private strCurBatteryUsage:Ljava/lang/String;

.field private strDisableReason:Ljava/lang/String;

.field private strDisableType:Ljava/lang/String;

.field private strExtras:Ljava/lang/String;

.field private strFasReason:Ljava/lang/String;

.field private strLevel:Ljava/lang/String;

.field private strMode:Ljava/lang/String;

.field private strNew:Ljava/lang/String;

.field private strPackageType:Ljava/lang/String;

.field private strPkgName:Ljava/lang/String;

.field private strPreBatteryUsage:Ljava/lang/String;

.field private strResetTime:Ljava/lang/String;

.field private strUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ZZ)V
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isBatteryColExist"    # Z
    .param p3, "isDisableReasonExist"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrPkgName(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrUid(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrMode(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrNew(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrFasReason(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrExtras(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrResetTime(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrPackageType(Ljava/lang/String;)V

    .line 47
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrLevel(Ljava/lang/String;)V

    .line 48
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrDisableType(Ljava/lang/String;)V

    .line 49
    if-eqz p2, :cond_69

    .line 50
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrPreBatteryUsage(Ljava/lang/String;)V

    .line 51
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrCurBatteryUsage(Ljava/lang/String;)V

    .line 53
    :cond_69
    if-eqz p3, :cond_74

    .line 54
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/FASEntity;->setStrDisableReason(Ljava/lang/String;)V

    .line 56
    :cond_74
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/mars/database/FASEntityBuilder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/server/am/mars/database/FASEntityBuilder;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrNew()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrFasReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrExtras()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->getStrDisableReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getStrCurBatteryUsage()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strCurBatteryUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getStrDisableReason()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStrDisableType()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    return-object v0
.end method

.method public getStrExtras()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getStrFasReason()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStrLevel()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMode()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    return-object v0
.end method

.method public getStrNew()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPackageType()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPkgName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPreBatteryUsage()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getStrResetTime()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStrUid()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    return-object v0
.end method

.method public setStrCurBatteryUsage(Ljava/lang/String;)V
    .registers 2
    .param p1, "curBatteryUsage"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strCurBatteryUsage:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setStrDisableReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "disableReason"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableReason:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setStrDisableType(Ljava/lang/String;)V
    .registers 2
    .param p1, "disableType"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strDisableType:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setStrExtras(Ljava/lang/String;)V
    .registers 2
    .param p1, "extras"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strExtras:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setStrFasReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "fasReason"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strFasReason:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setStrLevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "level"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strLevel:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setStrMode(Ljava/lang/String;)V
    .registers 2
    .param p1, "mode"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strMode:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setStrNew(Ljava/lang/String;)V
    .registers 2
    .param p1, "newStatus"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strNew:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setStrPackageType(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageType"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strPackageType:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setStrPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strPkgName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setStrPreBatteryUsage(Ljava/lang/String;)V
    .registers 2
    .param p1, "preBatteryUsage"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strPreBatteryUsage:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setStrResetTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "resetTime"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strResetTime:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setStrUid(Ljava/lang/String;)V
    .registers 2
    .param p1, "uid"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntity;->strUid:Ljava/lang/String;

    .line 118
    return-void
.end method
