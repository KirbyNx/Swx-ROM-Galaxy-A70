.class public Lcom/android/server/am/mars/database/FASEntityBuilder;
.super Ljava/lang/Object;
.source "FASEntityBuilder.java"


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
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strCurBatteryUsage:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/am/mars/database/FASEntity;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_f

    .line 21
    :cond_9
    new-instance v0, Lcom/android/server/am/mars/database/FASEntity;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/database/FASEntity;-><init>(Lcom/android/server/am/mars/database/FASEntityBuilder;)V

    return-object v0

    .line 20
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrCurBatteryUsage()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strCurBatteryUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getStrDisableReason()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStrDisableType()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    return-object v0
.end method

.method public getStrExtras()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getStrFasReason()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStrLevel()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getStrMode()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    return-object v0
.end method

.method public getStrNew()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPackageType()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPkgName()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrPreBatteryUsage()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getStrResetTime()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStrUid()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    return-object v0
.end method

.method public setStrCurBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strCurBatteryUsage"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strCurBatteryUsage:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strDisableReason"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strDisableType"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableType:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strExtras"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strFasReason"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strLevel"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strMode"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strNew"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strNew:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public setStrPackageType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strPackageType"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPackageType:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strPkgName"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public setStrPreBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strPreBatteryUsage"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPreBatteryUsage:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strResetTime"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;
    .registers 2
    .param p1, "strUid"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    .line 39
    return-object p0
.end method
