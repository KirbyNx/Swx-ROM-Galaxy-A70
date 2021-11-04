.class Lcom/android/server/pm/PackageManagerService$VerifierPackage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifierPackage"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public final componentName:Landroid/content/ComponentName;

.field public final packageName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "activityName"    # Ljava/lang/String;

    .line 2011
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2012
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->packageName:Ljava/lang/String;

    .line 2013
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uid:I

    .line 2014
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->componentName:Landroid/content/ComponentName;

    .line 2015
    const-string v0, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->action:Ljava/lang/String;

    .line 2016
    const-string v0, "android.permission.PACKAGE_VERIFICATION_AGENT"

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->permission:Ljava/lang/String;

    .line 2017
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isVerifier2"    # Z

    .line 2019
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2020
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->packageName:Ljava/lang/String;

    .line 2021
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uid:I

    .line 2022
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->componentName:Landroid/content/ComponentName;

    .line 2023
    if-eqz p5, :cond_1b

    .line 2024
    const-string v0, "com.samsung.android.intent.action.PACKAGE_NEEDS_VERIFICATION2"

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->action:Ljava/lang/String;

    .line 2025
    const-string v0, "com.samsung.android.permission.PACKAGE_VERIFICATION_AGENT2"

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->permission:Ljava/lang/String;

    goto :goto_23

    .line 2027
    :cond_1b
    const-string v0, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->action:Ljava/lang/String;

    .line 2028
    const-string v0, "android.permission.PACKAGE_VERIFICATION_AGENT"

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->permission:Ljava/lang/String;

    .line 2030
    :goto_23
    return-void
.end method
