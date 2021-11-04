.class Lcom/android/server/privilege/PrivilegeCarrierInfo;
.super Ljava/lang/Object;
.source "PrivilegeCarrierInfo.java"


# static fields
.field private static final PRIVILEGE_OPERATOR:Ljava/lang/String; = "OPERATOR"

.field private static final PRIVILEGE_SIM_OPERATOR:Ljava/lang/String; = "SIM_OPERATOR"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/privilege/PrivilegeCarrierInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/privilege/PrivilegeCarrierInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkCarrier(Lcom/android/server/privilege/PrivilegePackage;)Z
    .registers 8
    .param p0, "privilegePackage"    # Lcom/android/server/privilege/PrivilegePackage;

    .line 18
    invoke-static {}, Lcom/android/server/privilege/PrivilegeCarrierInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/privilege/PrivilegePackage;->isAllowed(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 19
    return v1

    .line 22
    :cond_c
    const-string v0, "SIM_OPERATOR"

    invoke-virtual {p0, v0}, Lcom/android/server/privilege/PrivilegePackage;->isAllowed(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 23
    invoke-static {}, Lcom/android/server/privilege/PrivilegeCarrierInfo;->getSimOperators()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_1b
    if-ge v4, v3, :cond_29

    aget-object v5, v0, v4

    .line 24
    .local v5, "operator":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/privilege/PrivilegePackage;->isAllowed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 25
    return v1

    .line 23
    .end local v5    # "operator":Ljava/lang/String;
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 31
    :cond_29
    const-string v0, "OPERATOR"

    invoke-virtual {p0, v0}, Lcom/android/server/privilege/PrivilegePackage;->isAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 32
    invoke-static {}, Lcom/android/server/privilege/PrivilegeCarrierInfo;->getOperators()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_37
    if-ge v4, v3, :cond_45

    aget-object v5, v0, v4

    .line 33
    .restart local v5    # "operator":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/privilege/PrivilegePackage;->isAllowed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 34
    return v1

    .line 32
    .end local v5    # "operator":Ljava/lang/String;
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 39
    :cond_45
    return v2
.end method

.method private static getOperators()[Ljava/lang/String;
    .registers 2

    .line 59
    const-string/jumbo v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "operator":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSalesCode()Ljava/lang/String;
    .registers 4

    .line 43
    const-string/jumbo v0, "persist.omc.sales_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "salesCode":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 45
    sget-object v1, Lcom/android/server/privilege/PrivilegeCarrierInfo;->TAG:Ljava/lang/String;

    const-string v2, "OMC is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_1d
    sget-object v1, Lcom/android/server/privilege/PrivilegeCarrierInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "salesCode is loaded :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v0
.end method

.method private static getSimOperators()[Ljava/lang/String;
    .registers 2

    .line 54
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "simOperator":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/privilege/PrivilegeCarrierInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SIM Operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Lcom/android/server/privilege/PrivilegeCarrierInfo;->getSimOperators()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lcom/android/server/privilege/PrivilegeCarrierInfo;->getOperators()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method
