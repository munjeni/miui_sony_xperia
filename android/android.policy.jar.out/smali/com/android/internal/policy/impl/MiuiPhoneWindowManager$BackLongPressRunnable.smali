.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackLongPressRunnable"
.end annotation


# instance fields
.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 1
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    return-void
.end method

.method private showHint()V
    .locals 5

    .prologue
    const/high16 v4, 0x2

    .line 745
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 746
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x60c016f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 747
    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    const v2, 0x1040013

    new-instance v3, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 758
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 759
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 760
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 762
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 763
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 687
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPressed:Z

    .line 688
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 690
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v11, :cond_0

    .line 691
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->showHint()V

    .line 742
    :goto_0
    return-void

    .line 696
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget-object v8, v11, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 697
    .local v8, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 699
    .local v10, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 700
    .local v4, className:Ljava/lang/String;
    const/16 v11, 0x2f

    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 701
    .local v7, index:I
    if-ltz v7, :cond_1

    .line 702
    new-instance v5, Landroid/content/ComponentName;

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v5, v8, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .local v5, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 709
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v9, v5, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 710
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 712
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 713
    const/4 v11, 0x0

    invoke-virtual {v9, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 714
    .local v3, applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 723
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #componentName:Landroid/content/ComponentName;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 730
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 732
    .local v2, am:Landroid/app/ActivityManager;
    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v12, v12, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v13, 0x60c0170

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .end local v10           #title:Ljava/lang/String;
    :goto_3
    aput-object v10, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 725
    .end local v2           #am:Landroid/app/ActivityManager;
    .restart local v10       #title:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 726
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v2       #am:Landroid/app/ActivityManager;
    :cond_2
    move-object v10, v8

    .line 735
    goto :goto_3

    .line 717
    .end local v2           #am:Landroid/app/ActivityManager;
    .restart local v5       #componentName:Landroid/content/ComponentName;
    .restart local v9       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method public setTarget(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "win"

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 684
    return-void
.end method
