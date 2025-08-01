<?php

namespace App\Http;

use App\Http\Middleware\CheckAdminHasPermission;
use App\Http\Middleware\PackageHasPermission;
use App\Http\Middleware\RedirectIfOwnerPackageExpired;
use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    /**
     * The application's global HTTP middleware stack.
     *
     * These middleware are run during every request to your application.
     *
     * @var array
     */
    protected $middleware = [
        \App\Http\Middleware\CheckForMaintenanceMode::class,
        \Illuminate\Foundation\Http\Middleware\ValidatePostSize::class,
        \App\Http\Middleware\TrimStrings::class,
        \Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull::class,
        \App\Http\Middleware\TrustProxies::class,
    ];

    /**
     * The application's route middleware groups.
     *
     * @var array
     */
    protected $middlewareGroups = [
        'web' => [
            \App\Http\Middleware\EncryptCookies::class,
            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
            \Illuminate\Session\Middleware\StartSession::class,
            \Illuminate\View\Middleware\ShareErrorsFromSession::class,
            \App\Http\Middleware\VerifyCsrfToken::class,
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
        ],

        'api' => [
            'throttle:60,1',
            'bindings',
        ],
    ];

    /**
     * The application's route middleware.
     *
     * These middleware may be assigned to groups or used individually.
     *
     * @var array
     */
    protected $routeMiddleware = [
        'auth' => \App\Http\Middleware\Authenticate::class,
        'auth.basic' => \Illuminate\Auth\Middleware\AuthenticateWithBasicAuth::class,
        'bindings' => \Illuminate\Routing\Middleware\SubstituteBindings::class,
        'cache.headers' => \Illuminate\Http\Middleware\SetCacheHeaders::class,
        'can' => \Illuminate\Auth\Middleware\Authorize::class,
        'guest' => \App\Http\Middleware\RedirectIfAuthenticated::class,
        'signed' => \Illuminate\Routing\Middleware\ValidateSignature::class,
        'throttle' => \Illuminate\Routing\Middleware\ThrottleRequests::class,
        'verified' => \Illuminate\Auth\Middleware\EnsureEmailIsVerified::class,
        'checkpermission' => \App\Http\Middleware\CheckPermission::class,
        'checkUserPermission' => \App\Http\Middleware\CheckPermissionUser::class,
        'setlang' => \App\Http\Middleware\SetLangMiddleware::class,
        'checkstatus' => \App\Http\Middleware\CheckStatus::class,
        'userstatus' => \App\Http\Middleware\UserStatus::class,
        'Demo' => \App\Http\Middleware\Demo::class,
        'admin' => \App\Http\Middleware\RedirectIfNotAdmin::class,
        'admin.guest' => \App\Http\Middleware\RedirectIfAdmin::class,
        'userMaintenance' => \App\Http\Middleware\UserMaintenance::class,
        'client' => \App\Http\Middleware\RedirectIfNotClient::class,
        'client.guest' => \App\Http\Middleware\RedirectIfClient::class,
        'packageExpiryCheck' => RedirectIfOwnerPackageExpired::class,
        'checkAdminHasPermission' => CheckAdminHasPermission::class,
        'packageHasPermission' => PackageHasPermission::class,
        'limitCheck' => \App\Http\Middleware\LimitCheckMiddleware::class,
        'banStaff' => \App\Http\Middleware\StaffBanMiddleware::class,
        'CheckPackageThemePermission' => \App\Http\Middleware\CheckPackageThemePermission::class,
        'CheckPackagePaymentPermission' => \App\Http\Middleware\CheckPackagePaymentPermission::class,
    ];

    /**
     * The priority-sorted list of middleware.
     *
     * This forces non-global middleware to always be in the given order.
     *
     * @var array
     */
    protected $middlewarePriority = [
        \Illuminate\Session\Middleware\StartSession::class,
        \Illuminate\View\Middleware\ShareErrorsFromSession::class,
        \App\Http\Middleware\Authenticate::class,
        \Illuminate\Session\Middleware\AuthenticateSession::class,
        \Illuminate\Routing\Middleware\SubstituteBindings::class,
        \Illuminate\Auth\Middleware\Authorize::class,
    ];
}