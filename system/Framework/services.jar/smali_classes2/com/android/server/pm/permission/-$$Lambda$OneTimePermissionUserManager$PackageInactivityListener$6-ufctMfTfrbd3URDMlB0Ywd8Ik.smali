.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$6-ufctMfTfrbd3URDMlB0Ywd8Ik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$6-ufctMfTfrbd3URDMlB0Ywd8Ik;->f$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$6-ufctMfTfrbd3URDMlB0Ywd8Ik;->f$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->lambda$new$1$OneTimePermissionUserManager$PackageInactivityListener(II)V

    return-void
.end method
