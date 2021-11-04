.class Lcom/android/server/am/KillPolicyManager$SwappinessController;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwappinessController"
.end annotation


# static fields
.field private static final SWAPPINESS_PROPERTY_KEY:Ljava/lang/String; = "sys.sysctl.swappiness"


# instance fields
.field private mCurrentValue:I

.field private final mDefaultValue:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getSwappinessFromProc()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwappinessController() - default value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    return-void
.end method

.method static getSwappinessFromProc()I
    .registers 1

    .line 2057
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getCurSwappiness()I

    move-result v0

    return v0
.end method


# virtual methods
.method getDefaultValue()I
    .registers 2

    .line 2076
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    return v0
.end method

.method getValue()I
    .registers 2

    .line 2072
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    return v0
.end method

.method setValue(I)V
    .registers 5
    .param p1, "swappiness"    # I

    .line 2061
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    const-string v1, "ActivityManager"

    if-gt p1, v0, :cond_d

    .line 2062
    const-string v0, "SwappinessController() - new value is lower than default value, go back to default"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    .line 2066
    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sys.sysctl.swappiness"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwappinessController() - changed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 2069
    return-void
.end method
